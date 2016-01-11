

def factorial_r(n)
  if n == 0
    1
  else
    n * factorial_r(n-1)
  end
end


def factorial_i(n)
  if n == 0
    result = 1
  else
    result = n
    until n == 2
      result *= (n-1)
      n -= 1
    end
  end
  result
end
