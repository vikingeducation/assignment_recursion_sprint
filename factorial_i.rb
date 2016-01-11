def factorial_i(number)
  factorial = 1
  return 1 if number == 1
  number.times do |num|
    factorial *= number
    number -= 1
  end
  factorial
end