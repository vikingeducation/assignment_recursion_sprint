def factorial_r(num)
  return 1 if num <= 1
  num * factorial_r(num-1)
end

def factorial_i(num)
  return 1 if num <= 1
  ans = 1
  i = num
  while i > 0
    ans *= i
    i -= 1
  end
  ans
end


def sumdig_r(num)
  return 0 if num == 0
  num % 10 + sumdig_r(num / 10)
end

def sumdig_i(num)
  ans = 0
  holder = num
  while(holder / 10 != 0)
    ans += holder % 10
    holder /= 10
  end
  ans + holder
end

def palindrome_r(str)
  str = str.strip.downcase
  return true if str.length <= 1
  return false if str[0] != str[-1]
  palindrome_r(str[1..-2])
end

def palindrome_i(str)
  while str.length > 1
    str = str.strip.downcase
    return false if str[0] != str[-1]
    str = str.slice(1..-2)
  end
  return true
end
