def factorial_r(n)
  return 1 if n == 0 || n == 1

  n * factorial_r(n - 1)
end

def factorial_i(n)
  return 1 if n == 0 || n == 1

  result = 1
  1.upto(n) { |i| result *= i }

  result
end
