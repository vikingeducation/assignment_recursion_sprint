module Factorial
  def factorial_r(n)
    # base case
    return 1 if n == 1 || n == 0

    # recursive case
    n * factorial_r(n-1)
  end

  def factorial_i(n)
    result = 1

    n.downto(1).each do |num|
      result *= num
    end

    result
  end
end
