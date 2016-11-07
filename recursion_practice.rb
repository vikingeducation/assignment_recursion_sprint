def factorial_r(n)
  return 1 if n <= 1
  n * factorial_r(n - 1)
end

def factorial_i(n)
  return 1 if n <= 1
  result = n
  (n - 1).downto(1) do |num|
    result = result * num
  end
  result
end


# p factorial_r(5)
# p factorial_i(6)

def sumdig_r(n)

end

def sumdig_i(n)

end
