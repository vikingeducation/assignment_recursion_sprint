def digsum_r(n)
  if n < 10
    n
  else
    n % 10 + digsum_r(n/10)
  end
end

def digsum_i(n)
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end
  sum
end