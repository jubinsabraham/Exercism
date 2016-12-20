class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum = 0
    (0..@number).each do |i|
      sum = sum + i
    end
     sum ** 2
  end

  def sum_of_squares
    sq = 0
    (0..@number).each do |i|
      sq = sq + i ** 2
    end
    sq
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
