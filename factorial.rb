def factorial_recursive (n)
  return 1 if n == 0
  n * factorial_recursive(n-1)
end

def factorial_iterative (n)
  iteration = n
  result = iteration
  until iteration == 0
    result *= iteration
    iteration -= 1
  end
end