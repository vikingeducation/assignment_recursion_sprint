def fact_r(n)
  return n if n == 1
  n * fact(n-1)
end


def fact_i(n)
  i = 1

  while n > 0
    i *= n
    n -= 1
  end

  return i
end
