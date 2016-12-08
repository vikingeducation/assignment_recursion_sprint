def sumdig_i(n)
  string_digits = n.to_s.split("")
  num_digits = string_digits.map { |n| n.to_i }
  num_digits.inject(:+)
end

puts sumdig_i(212)
