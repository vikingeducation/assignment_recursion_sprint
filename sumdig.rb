def sumdig_r(n) 

  if n < 10 
    return n 
  else
    return n % 10 + sumdig_r(n/10) 
  end

end

def sumdig_i(n)

  total = 0
  while n > 10
    total += n % 10 
    n /= 10 
  end
  if n == 10
    total += n/10 # += 1
  else 
    total += n
  end
  total

end

puts sumdig_r(10343)
puts sumdig_i(10343)
