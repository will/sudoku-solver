class Group
  
  def initialize
    @cells = []
  end
  
  def add_cell(cell)
    @cells << cell
    cell.register self
  end
  
  def value_change_for(cell)
    
    @cells.each { |c| c.remove_possiblity cell.value }
    check_possibilities
  end
  
  def check_possibilities

    values = {}
    1.upto(9) { |i| values[i] = [] }
    
    @cells.select { |cell| cell.possibilities.size == 1 }.each do |cell|
      cell.possibilities.each do |poss|
        values[poss] << cell 
      end
    end
    
    values.select { |k,v| v.size == 1 }.each do |value, cell_array|
      cell_array.first.value = value
    end


    @cells.reject! { |cell| cell.value != nil }


  end
end