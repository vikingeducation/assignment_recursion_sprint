def sumdig_r(n)
  if n == 0
    n = 0
  else
    sumdig_r(n/10) + n%10
  end
end

def sumdig_i(n)
  result = 0
  while n != 0
    result += n%10
    n = n/10
  end
  result
end