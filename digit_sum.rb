
def sumdig_r(n) 

  return n if n < 10 

  return sumdig_r(n / 10) + n%10

end


def sumdig_i(n) #199

  sum = 0
  
  until n < 10

    sum += n%10
    n = n/10

  end

  return sum + n

end