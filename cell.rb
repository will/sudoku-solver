class Cell
  attr_reader :possibilities, :value
  
  def initialize
    @possibilities = (1..9).to_a
    @groups = []
  end
  
  def register(group)
    @groups << group
  end
  
  def value=(number)
    return unless @possibilities.include? number
    return unless @value == nil
    @value = number
    @groups.each { |g| g.value_change_for self }
  end
  
  def remove_possiblity(number)
    @possibilities -= [number]
  end
end
