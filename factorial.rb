def factorial_r(num)
  return 1 if num == 1

  num * factorial_r(num - 1)
end


def factorial_i(num)
  (1..num).inject(:*)
end


p factorial_i(4)