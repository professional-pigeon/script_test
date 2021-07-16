require ('pry')

class Whiteboard
  attr_reader(:array1, :array2)

  def initialize(array1, array2)
    @array1 = array1
    @array2 = array2
  end

  def math_function
    @array1 = @array1.sort
    @array2 = @array2.sort.reverse
    @array1.each do |a|
      x = 0
      a * array2[x]
      x+1
    end
  end

end