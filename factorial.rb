def factorial_r(n)
  if n == 1
    1
  else
    n * factorial_r(n-1)
  end
end

def factorial_i(n)
  fact = 1
  1.upto(n) do |i|
    fact *= i
  end
  fact
end