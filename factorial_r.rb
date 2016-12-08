def factorial_r(n)
  return 1 if n == 1
  n * factorial_r(n-1)
end

puts factorial_r(8)