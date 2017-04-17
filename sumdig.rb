

def sumdig_r(num)
  num < 10 ? num % 10 : num % 10 + sumdig_r(num / 10)
end

def sumdig_i(num)
  result = 0
  input = num
  num.times do
    result += (input % 10)
    input /= 10
  end
  result
end

puts sumdig_r(1203561)
puts sumdig_i(1203561)
