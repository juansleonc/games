require 'sinatra/base'
require 'oj'
require_relative 'puzzle'

module Games
  class PuzzleApi < Sinatra::Base
    before do
      content_type :json
    end

    helpers do
      def find_or_create_puzzle(user_id)
        puzzle = Games::Puzzle.find_or_create_by(user_id: user_id)
        puzzle.reset_board if puzzle.board.nil? || puzzle.board.empty?
        puzzle
      end
    end

    get '/puzzle/:user_id' do
      puzzle = find_or_create_puzzle(params[:user_id])
      Oj.dump(board: puzzle.board)
    end

    post '/puzzle/:user_id/move' do
      direction = params[:direction]
      halt 400, { error: 'Invalid direction' }.to_json unless %w[up down left right].include?(direction)

      puzzle = find_or_create_puzzle(params[:user_id])
      puzzle.move(direction)
      Oj.dump(board: puzzle.board, solved: puzzle.solved?)
    end
  end
end
