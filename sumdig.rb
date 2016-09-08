def sumdig_r(n)
  return 1 if n < 10
  (number % 10) + sumdig_r(n /10)
end

def sumdig_i(n)
  sum = 0
  until n < 10
    remainder = n % 10
    n -= remainder
    n /= 10
    sum += remainder
  end
  sum += n
end