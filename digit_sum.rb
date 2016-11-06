def sumdig_r(n)
  return 0 if n == 0

  n%10 + sumdig_r(n/10)
end

def sumdig_i(n)
  sum = 0

  until n == 0
    sum += n%10
    n = n/10
  end
  sum
end
