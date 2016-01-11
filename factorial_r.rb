def factorial_r(number)
  return 1 if number == 1
  factorial = number * factorial_r(number - 1)
end