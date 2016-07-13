def sumdig_r(num)
  digits = num.to_s.chars.map(&:to_i)
  return digits[0] if digits.length == 1
  return digits.shift + sumdig_r(digits.join.to_i) 

end


def sumdig_i(num)
  raise "Argument must be a number" if num.to_i == 0
  digits = num.to_s.chars.map(&:to_i)
  digits.inject(:+)
end

p sumdig_i(555)

