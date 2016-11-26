# sumdig_i.rb

def sumdig_i(n)
  sum_of_digits = 0
  m = n
  remainder = m % 10

  while m > 0 do
    sum_of_digits += remainder
    m /= 10
    remainder = m % 10
  end
  sum_of_digits
end

def sumdig_i_v2(n)
  str = n.to_s
  sum_of_digits = 0 
  str.chars.each { |char| sum_of_digits += char.to_i }
  sum_of_digits
end

def sumdig_i_v3(n)
  n.to_s.chars.reduce(0) { |memo, char| memo + char.to_i }
end

