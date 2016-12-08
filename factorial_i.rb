def factorial_i(n)
  factors = []
  while n > 0
    factors << n
    n -= 1
  end
  factors.inject(:*)
end

puts factorial_i(8)