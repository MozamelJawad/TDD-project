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

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end

# method running example
solver = Solver.new
puts solver.factorial(6)
puts solver.reverse('hello')
puts solver.fizzbuzz(15)
puts solver.fizzbuzz(7)
puts solver.fizzbuzz(10)
