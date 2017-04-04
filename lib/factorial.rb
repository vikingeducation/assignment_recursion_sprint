class Factorial
  def factorial_r(num)
    raise 'Input must be a positive integer' unless num.is_a? Integer
    raise 'Please enter a positive number' if num < 0
    return 1 if num == 0 || num == 1
    return num * (factorial_r(num - 1))
  end

  def factorial_i(num)
    f_result = num
    1.upto(num-1) do |i|
      f_result *= num - i
    end

    return 1 if f_result == 0
    f_result
  end
end
