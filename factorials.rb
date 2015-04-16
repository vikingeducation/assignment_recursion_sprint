def factorial_r(number)
  
  return 1 if number == 0
  return number * (factorial_r(number - 1))
  
end

def factorial_i(number)
  
  return 1 if number == 0
  
  sum = 0
  
  number.downto(1) do
    sum += number * number - 1
  end
  
  sum
  
end
