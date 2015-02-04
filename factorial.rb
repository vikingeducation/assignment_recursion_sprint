def factorial_r(n)
  if n == 1
    1
  else
    n * factorial_r(n-1)
  end
end

def factorial_i(n)
  fact = 1
  i = 1
  while i <= n
    fact *= i
    i += 1
  end
  fact
end