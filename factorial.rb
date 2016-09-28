def factorial_r(n)
  if n == 0 || n == 1
    return 1
  else
    n * factorial_r(n-1)
  end
end

def factorial_i(n)
  if n == 0
    return 1
  else
    [*1..n].inject { | p, n | p * n }
  end
end