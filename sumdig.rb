def sumdig_r(num)

  if num == 0
    return 0
  else
    return (num % 10) + sumdig_r(num / 10)
  end

end

def sumdig_i(num)

  sum = 0
  num.to_s.split("").each { |value| sum += value.to_i }
  sum

end

puts sumdig_r(103).to_s
puts sumdig_i(103).to_s