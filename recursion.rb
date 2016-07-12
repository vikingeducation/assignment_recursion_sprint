def factorial_r(num)
  return num if num == 1
  num * factorial_r(num - 1)
end

#p factorial_r(5)

def factorial_i(num)
  (1..num).inject(:*)
end

#p factorial_i(5)

def sumdig_r(num)
  num_str = num.to_s
  if num_str.length == 1
    num_str[0].to_i
  else
    num_str[0].to_i + sumdig_r(num_str[1..-1].to_i)
  end
end

#p sumdig_r(234567)

def sumdig_i(num)
  p num.to_s.split("").inject(0) {|total, number| total += number.to_i}
end

#sumdig_i(154)

def palindrome_r(string)
  string = string.downcase.scan(/\w/).join("")
  if string.length < 2
    true
  else
    if string[0] == string[-1]
      palindrome_r(string[1..-2])
    else
      return false
    end
  end
end

#p palindrome_r("Rise to vote, sir")

def palindrome_i(string)
  string = string.downcase.scan(/\w/).join("")
  start = 0
  finish = string.length - 1
  while start <= finish
    if string[start] == string[finish]
      start += 1
      finish -= 1
    else
      return false
    end
  end
  return true
end

p palindrome_i("racecar")
