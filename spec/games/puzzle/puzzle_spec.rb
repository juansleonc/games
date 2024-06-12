require 'spec_helper'
require_relative '../../../games/puzzle/puzzle'

RSpec.describe Games::Puzzle, type: :model do
  let(:puzzle) { Games::Puzzle.new(user_id: '1234') }

  it 'initializes with a 4x4 board' do
    expect(puzzle.board.size).to eq(4)
    expect(puzzle.board.flatten.size).to eq(16)
  end

  it 'resets the board correctly' do
    puzzle.reset_board
    expect(puzzle.board.flatten.compact.size).to eq(15)
    expect(puzzle.board.flatten.include?(nil)).to be true
  end

  it 'moves the pieces correctly' do
    puzzle.reset_board
    empty_row, empty_col = puzzle.send(:find_empty)
    puzzle.move('up')
    expect(puzzle.board[empty_row - 1][empty_col]).to be_nil if empty_row > 0
  end


end
