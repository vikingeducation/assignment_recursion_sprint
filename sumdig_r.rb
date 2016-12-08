def sumdig_r(n)
  return n if n.to_s.length == 1
  remaining = n / 10
  ( n % 10 ) + sumdig_r(remaining)
end

puts sumdig_r(23456)