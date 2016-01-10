def sumdig_i(num)
  total = 0
  num.to_s.split('').each{|item| total += item.to_i}
  total
end

puts sumdig_i(1045)

def sumdig_r(num)

  return 0 if num == 0

  return num % 10 + sumdig_r(num/10)

end

puts sumdig_r(1045)