

def factorial_r(number)

  return number if number <= 1
  number * factorial_r(number - 1)

end 

def factorial_i(number)

  (1..number).to_a.inject do |prod,term|
    prod *= term
  end 

end  

def sumdig_r(number)

  if number < 10
     number
  else    
    (number % 10) + sumdig_r(number / 10)
  end  

end 

def sumdig_i(number)

  number.to_s.chars.inject(0) do |sum,term|
    sum += term.to_i
  end 
  
end  

def palindrome_r(str)

  return true if str.length <= 1 

  return false if str[0] != str[-1]
  
  palindrome_r(str[1..-2])

end 

def palindrome_i(str)

  return true if str.length <= 1 

  return false if str[0] != str[-1]
  
  palindrome_r(str[1..-2])

end 

#puts factorial_r(1)
#puts factorial_r(5)
#puts factorial_i(1)
#puts factorial_i(5)

# puts sumdig_r(1)
# puts sumdig_r(305)
# puts sumdig_r(3050)
# puts sumdig_r(30509)

# puts sumdig_i(1)
# puts sumdig_i(305)
# puts sumdig_i(3050)
# puts sumdig_i(30509)

puts palindrome_r("ABAABA")
puts palindrome_r("ABAEBA")
puts palindrome_r("A")
puts palindrome_r("ABABA")
puts palindrome_r("ABAEA")