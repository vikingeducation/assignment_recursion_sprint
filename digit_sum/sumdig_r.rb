# sumdig_r.rb

def sumdig_r(n)
  if n < 10
    n
  else
    last_digit = n % 10
    quotient = n / 10
    last_digit + sumdig_r(quotient)
  end
end

