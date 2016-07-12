def factorial_r(num)
  return num if num == 1
  num * factorial_r(num - 1)
end

p factorial_r(5)

def factorial_i(num)
  (1..num).inject(:*)
end

p factorial_i(5)

def sumdig_r(num)
  num_str = num.to_s
  if num_str.length == 1
    num_str[0].to_i
  else
    num_str[0].to_i + sumdig_r(num_str[1..-1].to_i)
  end
end

p sumdig_r(234567)
