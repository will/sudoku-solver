require 'cell'
require 'group'
require 'board'



def manual_solve
  b = Board.new
  loop do
    b.print
  
    print "row: "
    row = gets.to_i
    print "col: "
    col = gets.to_i
    print "val: "
    val = gets.to_i
  
    b.set row, col, val
  
  end
end

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
