#sprint_recursion.rb

def factorial_r(n)
  return 1 if n <= 1
  n * factorial_r(n - 1)
end

def factorial_i(n)
  return 1 if n <= 1

  n.downto(1).reduce(1) do |product, item|
  product * item
  end
end

def sumdig_i(n)
  raise ArgumentError if n.class != Fixnum
  arr = n.to_s.chars
  sum = 0
  arr.each {|num| sum += num.to_i }
  sum
end

def sumdig_r(n)
  return n if n < 10
  arr = n.to_s.chars
  num = arr.pop.to_i
  binding.pry
  num +  sumdig_r(arr.join("").to_i)
end

def palindrome_i(arr)

  arr = arr.to_s.split('').select{|char| Array('a'..'z').include?(char.downcase)}

  arr.map!{|char| char.downcase}

  reversed_arr = []

  i = -1
  while i.abs <= arr.length
    reversed_arr << arr[i].downcase #if letters.include?(arr[i].downcase)
    i -= 1
  end

  reversed_arr == arr

end



# 'race car'
def palindrome_r(str)

  return str if str.length <= 1

  a_string = str[-1]
  # binding.pry
  a_string = a_string + palindrome_r(str[0..-2])
  str == a_string

end

arr = "Able was I ere I saw Elba"
puts palindrome_r(arr)




