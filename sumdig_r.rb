def sumdig_r(n)
  return n if n < 10
  n % 10 + sumdig_r( n / 10 )
end
# puts sumdig_r(12)
# puts sumdig_r(111)
# puts sumdig_r(1234)

def sumdig_i(n)
  nums = n.to_s.chars.map(&:to_i).inject(:+)
end

puts sumdig_i(12)
puts sumdig_i(111)
puts sumdig_i(1234)
