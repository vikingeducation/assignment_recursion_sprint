class Factorial
  def factorial_r(integer)
    raise ArgumentError, "Argument must be an integer >= 0" if integer < 0 || !(integer.is_a? Integer)
    # I think base case is 1
    return 1 if integer <= 1
    total = integer * factorial_r(integer -1)
  end

  def factorial_i(integer)
    raise ArgumentError, "Argument must be an integer >= 0" if integer < 0 || !(integer.is_a? Integer)
    total = 1
    2.upto(integer) do |i|
      total *= i
    end
    total
  end
end