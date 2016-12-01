def factorial_r(num)
  return 1 if num == 1

  num * factorial_r(num - 1)
end


def factorial_i(num)
  raise "Number must be greater than zero" if num < 0
  return 1 if num == 0
  (1..num).inject(:*)
end


p factorial_r(-4)