def factorial_r(n)
  
  return 1 if n == 0 || n == 1

  return n * factorial_r(n-1)

end

def factorial_i(n)

  sum = 1

  n.downto(1) do |i| 
    sum *= i
  end

  sum

end

