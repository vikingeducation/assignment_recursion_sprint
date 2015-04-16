def sumdig_r(number)
  
  return number == 0 ? 0 : number % 10 + sumdig_r( number / 10 )
  
end

def sumdig_i(number)
  
  return 0 if number == 0
  
  number = number.to_s.split("")

  sum = 0
  
  number.each do |num|
    sum += num.to_i
  end
  
  sum
  
end