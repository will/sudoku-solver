require 'cell'
require 'group'

class Board
  def initialize
    @cells = []
    @row_groups = Array.new(9) {|i| Group.new}
    @col_groups = Array.new(9) {|i| Group.new}
    @sec_groups = Array.new(9) {|i| Group.new}
        
    0.upto(8) do |row|
      @cells[row] = [] 
      0.upto(8) do |col|
        cell = Cell.new
        @cells[row][col] = cell
        @row_groups[row].add_cell cell
        @col_groups[col].add_cell cell
        @sec_groups[(((9*row + col) % 9) / 3) + row/3*3].add_cell cell
      end
    end
  end
  
  def print
    @cells.each do |row|
      STDOUT.print "|"
      row.each do |cell|
        STDOUT.print cell.value || " "
      end
      puts "|"
    end
  end
  
  def set(row,col,val)
    @cells[row][col].value = val
  end
end

