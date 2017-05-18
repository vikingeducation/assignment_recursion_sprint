def factorial_r(n)
  if n <= 1
    return  1
  else
    return  n * factorial_r(n - 1)
  end
end
puts "fact r 5 is #{factorial_r(5)}"
puts "fact r 0 is #{factorial_r(0)}"

def factorial_i(n)
  fact = 1
  2.upto(n) do |y|
    fact *= y
  end
  return fact
end
 puts "fact i 5 is #{factorial_i(5)}"

def sumdigit_r(n)
  if n < 10
    return n
  else
    num = n % 10
    return sumdigit_r((n - num) / 10) + num
  end
end
puts "sumdigit r 103 is #{sumdigit_r(103)}"

def sumdigit_i(n)
  sum = 0
  digit_arr = n.to_s.split("")
  digit_arr.each do |num|
     number =  num.to_i
     sum += number
  end
  return sum
end
puts "sumdigit i 103 is #{sumdigit_i(103)}"

def palindrome_r(word)
  if word.is_a? String
    letter_arr = word.split("")
  else
    letter_arr = word
  end
  if (letter_arr.length < 2)
    return true
  else
    if letter_arr[0] == letter_arr[ -1]
      return palindrome_r(letter_arr[1..-2])
    else
      return false
    end
  end
end
puts "pal r 'radar' is #{palindrome_r("radar")}"
puts "pal r 'ann' is #{palindrome_r("ann")}"

def palindrome_i(word)
  letter_arr = word.split("")
  half = letter_arr.length / 2
  first = 0
  last = -1
  palindrome = true
  half.times do
    if letter_arr[first] != letter_arr[last]
      palindrome = false
    else
      first += 1
      last -= 1
    end
  end
  return palindrome
end
puts "pal i 'radar' is #{palindrome_i("radar")}"
puts "pal i 'ann' is #{palindrome_i("ann")}"
