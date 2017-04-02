def factorial_r(n)
  if n == 1
    return  1
  else
    return  n * factorial_r(n - 1)
  end
end
puts factorial_r(5)

def factorial_i(n)
  fact = 1
  2.upto(n) do |y|
    fact *= y
  end
end
 puts factorial_i(5)

def sumdigit_r(n)
  if ((n >= 0) && (n <= 9))
    return n
  else
    num = n % 10
    return sumdigit_r((n - num) / 10) + num
  end
end
puts sumdigit_r(103)

def sumdigit_i(n)
  sum = 0
  digit_arr = n.to_s.split("")
  digit_arr.each do |num|
     number =  num.to_i
     sum += number
  end
  return sum
end
puts sumdigit_i(103)

def palindrome_r(word)
  letter_arr = word.split("")
  if (letter_arr.length == 0) || (letter_arr.length == 1)
    return true
  else
    if letter_arr[0] == letter_arr[ -1]
      letter_arr.delete_at(0)
      letter_arr.delete_at(-1)
      return palindrome_r(letter_arr.join)
    else
      return false
    end
  end
end
puts palindrome_r("radar")
puts palindrome_r("ann")

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
puts palindrome_i("radar")
puts palindrome_i("ann")
