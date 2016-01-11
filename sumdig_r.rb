def sumdig_r(number)
  return number if number < 10
  last_digit = number % 10
  sum = last_digit + sumdig_r(number / 10)
end