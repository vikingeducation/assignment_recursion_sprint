def factorial_r (num)
  return 1 if num == 1

  return num * factorial_r(num -1)
end


def factorial_i(num)
  sum = 1
  (1..num).each do |i|
    sum *= i
  end
   return sum
end


def sumdig_r(num)
  return if num == 0

  return sumdig_r(num / 10) + (num % 10)
end

puts sumdig_r(113)

