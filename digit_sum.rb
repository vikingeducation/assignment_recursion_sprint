def sumdig_r(num)
  return num if num < 10
  sumdig_r(num/10) + (num%10)
end

def sumdig_i(num)
  sum = num%10
  r = num
  while r > 0
    r = r/10
    sum += r%10
  end
  sum
end

10.times do
  num = Random.rand(1000)
  digit_sum = sumdig_r(num)
  puts "#{num} --> #{digit_sum}"
end 

10.times do
  num = Random.rand(1000)
  digit_sum = sumdig_i(num)
  puts "#{num} --> #{digit_sum}"
end 