def sumdig_r(n)
  
  return 0 if n==0

  return n%10+sumdig_r(n/10)

end

# puts sumdig_r(103)

# puts sumdig_r(45103)

def sumdig_i(n)
  res=0
  until n==0
    res+=n%10
    n/=10
  end

  res

end

#puts sumdig_i(45103)