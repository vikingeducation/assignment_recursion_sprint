

def factorial_r(num)
  num == 1 ? 1 : num * factorial_r(num - 1)
end

def factorial_i(num)
  result = 1
  num.times do |iter|
    result *= iter + 1
  end
  result
end

puts factorial_r(20)
puts factorial_i(20)
