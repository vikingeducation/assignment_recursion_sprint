def factorial_r(num)
  return num if num == 1

  num * factorial(num - 1)
end

def factorial_i(num)
  current_num = num
  product = current_num

  while current_num > 1
    current_num -= 1

    product *= current_num
  end

  product
end

# Driver Test
puts factorial_r(1) == 1
puts factorial_r(2) == 2
puts factorial_r(3) == 6
puts factorial_r(12) == 479_001_600

puts factorial_i(1) == 1
puts factorial_i(2) == 2
puts factorial_i(3) == 6
puts factorial_i(12) == 479_001_600
