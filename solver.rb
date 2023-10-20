class Solver
  # create factorial method
  def factorial(num)
    raise ArgumentError, 'Argument must be a non-negative integer' if num.negative?
    return 1 if num.zero?
    result = 1
    (1..num).each { |n| result *= n }
      result
  end
  # create reverse method
  def reverse(word)
    word.reverse
  end






