# Recursive factorial
def factorial_r(n)
  if(n==1)
    return 1
  else
    return n*factorial_r(n-1)
  end
end

# Iterative factorial
def factorial_i(n)
  total = n

  while n > 1
    total *= n-1
    n -= 1
  end
  total
end