require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new
    @cruiser = Ship.new("Cruiser", 3)
    @submarine = Ship.new("Submarine", 2)
  end

  def test_board_exists
    assert_instance_of Board, @board
  end

  def test_board_starts_with_cells
      all_cells = @board.cells.values.all? do |cell|
        cell.class == Cell
      end
    assert_equal true, all_cells
  end

end
