def factorial_r(n)
  return 1 if n == 1
  n * factorial_r(n-1)
end

def factorial_i(n)
  result = 1
  (1).upto(n) do |k|
    result *= k
  end
  result
end
