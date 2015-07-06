def factorial_r(num)  # why does shorter form not work
  if num == 1
    return num
  else
    num * factorial_r(num - 1)
  end
end


def factorial_i(num)
  result = 1
  while num > 0
    result *= num
    num -= 1
  end
  result
end

def sumdig_r(num)
  result = 0
  if num / 10 == 0
    result += num
  else
    result = result + num%10 + sumdig_r(num/10)
  end
  result
end

def sumdig_i(num)
  num = num.to_s.split("")
  sum = 0
  while num.length > 0
    sum += num.pop.to_i
  end
  sum
end

def palindrome_r(str)
  str_array = str.split("")
  if str_array.length == 0 || str_array.length == 1
    true
  else
    if (str_array.pop == str_array.shift) && (str_array.length > 1)
      print str_array.join("")
      palindrome_r(str_array.join(""))
    else
      return false
    end
  end
end

def palindrome_i(str)

end