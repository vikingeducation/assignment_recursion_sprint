def factorial(n)
  return 1 if n == 1
  n*factorial(n-1)
end

puts factorial(3)
puts factorial(4)
puts factorial(5)


def factorial_i(n)
  arr = []
  n.times {|n| arr << n + 1}
  arr.inject(:*)

end

puts factorial_i(3)
puts factorial_i(4)
puts factorial_i(5)
