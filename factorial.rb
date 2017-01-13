def factorial_r(num)
  return 1 if num < 2
  num * factorial_r(num-1)
end

def factorial_i(num)
  sum = 1
  while num > 0
    sum *= num
   num -= 1
  end
  sum 
end

p factorial_r(8)
p factorial_i(8)