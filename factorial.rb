def factorial_r(n)
  return n if n <= 1
  n *= factorial_r(n - 1)
end

def factorial_i(n)
  amount = 1
  n.downto(1) { |num| amound *= num }
  amound
end
