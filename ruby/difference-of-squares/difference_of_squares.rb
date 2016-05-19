class Squares

  def initialize(number)
    @number = (0..number)
  end

  def square_of_sum
    @number.inject { |sum, n| sum + n }**2
  end

  def sum_of_squares
    @number.inject { |sum, x| sum + x ** 2}
  end

  def difference
    square_of_sum - sum_of_squares
  end


  VERSION = 2

end

#(1..5).inject { |sum, n| sum + n }**2 - (1..5).inject { |sum, x| sum + x ** 2}
