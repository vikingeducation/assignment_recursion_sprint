def sumdig_r(num)
  return num if num < 10

  num%10 + sumdig_r(num/10)
end

def sumdig_i(num)
  current_num = num
  sum = 0

  while current_num > 0
    sum += current_num%10

    current_num /= 10
  end

  sum
end

# Driver test
puts sumdig_r(31) == 4
puts sumdig_r(4231) == 10
puts sumdig_r(0) == 0
puts sumdig_r(3) == 3

puts sumdig_i(31) == 4
puts sumdig_i(4231) == 10
puts sumdig_i(0) == 0
puts sumdig_i(3) == 3
