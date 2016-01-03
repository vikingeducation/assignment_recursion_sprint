class Factorial
  def factorial_r(integer)
    raise ArgumentError, "Argument must be an integer >= 0" if integer < 1 || !(integer.is_a? Integer)
  end
end