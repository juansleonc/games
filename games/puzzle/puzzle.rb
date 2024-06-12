require 'mongoid'

module Games
  class Puzzle
    include Mongoid::Document
    include Mongoid::Timestamps

    field :user_id, type: String
    field :board, type: Array
    field :size, type: Integer, default: 4

    validates :user_id, presence: true
    validates :board, presence: true
    validates :size, presence: true, numericality: { only_integer: true, greater_than: 2 }


    def initialize(attrs = nil)
      super(attrs)
      reset_board if new_record?
    end

    def reset_board
      numbers = (1..(size * size - 1)).to_a.shuffle + [nil]
      self.board = Array.new(size) { numbers.shift(size) }
      save
    end

    def move(direction)
      empty_row, empty_col = find_empty
      case direction
      when 'up'
        swap(empty_row, empty_col, empty_row - 1, empty_col) if empty_row > 0
      when 'down'
        swap(empty_row, empty_col, empty_row + 1, empty_col) if empty_row < size - 1
      when 'left'
        swap(empty_row, empty_col, empty_row, empty_col - 1) if empty_col > 0
      when 'right'
        swap(empty_row, empty_col, empty_row, empty_col + 1) if empty_col < size - 1
      end
      save
    end

    def solved?
      correct_order = (1..(size * size - 1)).to_a + [nil]
      board.flatten == correct_order
    end

    private

    def find_empty
      board.each_with_index do |row, i|
        row.each_with_index do |cell, j|
          return [i, j] if cell.nil?
        end
      end
    end

    def swap(row1, col1, row2, col2)
      board[row1][col1], board[row2][col2] = board[row2][col2], board[row1][col1]
    end
  end
end
