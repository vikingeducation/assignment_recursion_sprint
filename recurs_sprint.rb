def factorial_r(num)
  output = 1
  if num == 1
    1
  elsif num > 1
    num * factorial_r(num-1)
  end
end

def factorial_i(num)
  output = 1
  i = num
  while num > 1
    output = output * num
    num -= 1
  end
  output
end

puts "Factorial_r"
puts factorial_r(6) == 720
puts factorial_r(6)
puts "factorial_i"
puts factorial_i(5) == 120
puts factorial_i(5)
puts

def sumdig_r(num)
  # num_arr = num.to_s.chars.map(&:to_i)
  if num < 10
    num
  elsif num.between?(10,99)
    (num - (num % 10)) / 10 + sumdig_r(num % 10)
  elsif num.between?(100, 999)
    (num - (num % 100)) / 100 + sumdig_r(num % 100)
  end


end

def sumdig_i(num)
  output = 0
  num_arr = num.to_s.chars.map(&:to_i)
  num_arr.each do |digit|
    output += digit
  end
  output
end

puts "sumdig_r"
puts sumdig_r(34) == 7
puts sumdig_r(234) == 9
puts "sumdig_i"
puts sumdig_i(103) == 4
puts sumdig_i(234) == 9


puts
def palindrome_r(str)
  new_str = str.downcase.gsub(/[^0-9a-z]/i, '')
  if new_str.length == 0 || new_str.length == 1
    true
  else
    if new_str[0] == new_str[-1]
      palindrome_r(new_str[1..-2])
    else
      false
    end
  end
end

def palindrome_i(str)
  new_str = str.downcase.gsub(/[^0-9a-z]/i, '')
  i = new_str.length / 2
  first = 0
  last = -1
  while i > 0
    if new_str[first] != new_str[last]
      return false
    else
      i -=1
      first += 1
      last -= 1
    end
  end
  true
end

test_str = "Rise to vote, sir"
fail_str = "Cheezus Christ"

puts test_str[1..-2]
puts "palindrome_r"
puts palindrome_r(test_str) == true
puts palindrome_r(fail_str) == false
puts "palindrome_i"
puts palindrome_i(test_str) == true
puts palindrome_i(fail_str) == false
