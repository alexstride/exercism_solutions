class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    (1..@n).reduce(:+) ** 2
  end

  def sum_of_squares
    (1..@n).reduce(0) {|sum, number| sum + number ** 2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 4
end
