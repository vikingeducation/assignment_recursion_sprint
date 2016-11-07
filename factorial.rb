
def factorial_r(num)
  return 1 if num <= 1
  num * factorial_r(num-1)
end

def factorial_i(num)
  return 1 if num <= 1
  factorial = 1
  num.downto(2) do |number|
    factorial *= number
  end
  factorial
end

