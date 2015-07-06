

def factorial_r(n)

  return 0 if n <= 0
  return 1 if n == 1
  return n * factorial_r(n-1)

end


def factorial_i(n)

  return 0 if n <= 0

  fact = 1

  while n >= 1
    fact *= n
    n-=1
  end

  return fact

end