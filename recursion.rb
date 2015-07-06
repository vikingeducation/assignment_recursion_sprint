def factorial_r (num)
  return 1 if num == 1

  return num * factorial_r(num -1)
end


def factorial_i(num)
  sum = 1
  (1..num).each do |i|
    sum *= i
  end
   return sum
end


def sumdig_r(num)
  return 0 if num == 0

  return sumdig_r(num / 10)+ num%10
end

# puts sumdig_r(103)

def sumdig_i(num)
sum =0
  while num!=0
    sum += num%10
    num = num/10
  end
  sum
end

# puts sumdig_i(103)

def palindrome_r(string)

  return true if string.length == 1 || string.length == 0

  string[0] == string[-1] ? palindrome_r(string[1..-2]) : false
end

# puts palindrome_i("rotor")

def palindrome_i(string)

  while string.length != 1 || string.length != 0
    if string[0] == string[-1]
      string.slice!(0)
      string.slice!(-1)
    else
      return false
    end
    return true
  end

end

puts palindrome_r("sotor")









