require 'cell'
require 'group'
require 'board'

def solve
  b = Board.new
  (0..8).each do |row|
    (0..8).each do |col|
      val = gets.to_i
      next if val.nil? || val == 0
      b.set row, col, val
      b.print
    end
  end
end

solve
