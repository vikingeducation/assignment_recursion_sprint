def factorial_r(num)
  if num == 0
    1
  else
    num * factorial_r(num - 1)
  end
end

def factorial_i(num)
  big_number = num
  if num == 0
    big_number = 1
  else
    while num > 1    
      big_number = big_number * num
      num -= 1
    end
  end
  puts big_number
end

def sumdig_r(num)
  if num < 10
    num
  else
    num % 10 + schwadulo(num/10)
  end
end

def sumdig_i(num)
  iterator = 10
  answer = 0
  until num == 0
    answer += num % 10
    num = num / 10
  end
  puts answer
end

def palindrome_r(string)
  if string.length == 0 || string.length == 1
    true
  else
    if string[0] == string[-1] && palindrome_r(string[1..-2])
      return true
    end
  end
end

def palindrome_i(string)
  string_array = string.split(//)
  until string_array.length == 0 || string_array.length == 1
    if string_array.shift != string_array.pop
      return false
    end
  end
  return true
end

