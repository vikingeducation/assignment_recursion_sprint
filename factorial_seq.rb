def factorial_r(num)
  if num == 0
    1
  else
    factorial_r(num-1)*num
  end
end

def factorial_i(num)
 fact = 1
  while num > 0
    fact *= num
    num -= 1
  end
  fact
end