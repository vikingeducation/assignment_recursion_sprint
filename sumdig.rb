def sumdig_r(num, sum=0)
  digit = num % 10
  sum += digit
  return sum if num-digit == 0
  sumdig_r((num-digit)/10, sum)
end

# def sumdig_i(num)
#   num = num.to_s.split('').map(&:to_i)
#   num.reduce(:+)
# end

def sumdig_i(num)
  digit = num % 10
  sum  = 0
  until (num-digit == 0) 
    digit = num % 10
    sum += digit
    num = ((num - digit) / 10)
end
sum
end
