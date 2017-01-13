def sumdig_r(num)
  return num if num < 10
  (num % 10) + sumdig_r(num/10)
end

# def sumdig_i(num)
# straightforward version
#   num = num.to_s.split('').map(&:to_i)
#   num.reduce(:+)
# end

def sumdig_i(num)
  # more similar to the recursive version
  sum  = 0
  while num > 0
    sum += num % 10
    num /= 10
  end
end
