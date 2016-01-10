def factorial_r(num)
  return 1 if num == 1
  return num * factorial_r(num - 1)
end

puts factorial_r(6)