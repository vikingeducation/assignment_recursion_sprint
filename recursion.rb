require 'pry'

def factorial_r(num)
  if num == 1
    1
  else
    num * factorial_r(num - 1)
  end
end

# puts factorial_r(3)
# puts factorial_r(5)
# puts factorial_r(10)

def factorial_n(num)
  result = 1
  num.times { |i| result *= i + 1 }
  result
end

# puts factorial_n(3)
# puts factorial_n(5)
# puts factorial_n(10)

def sumdig_r(num, result = 0)
  if num < 10
    result += num
  else
    result += num % 10
    result = sumdig_r(num / 10, result)
  end
  result
end

def sumdig_n(num)
  num.to_s.chars.map{ |digit| digit.to_i }.inject(:+)
end
# puts sumdig_r(103)
# puts sumdig_r(232480)
# puts sumdig_n(103)
# puts sumdig_n(232480)

def palindrome_r(word)
  if word.length == 1 or word.length == 0
    true
  else
    if word[0] == word[-1]
      palindrome_r(word[1..-2])
    else
      false
    end
  end
end

def palindrome_n(word)
  result = true
  if word.length != 1 && word.length != 0
    i = 0
    while i < word.length / 2
      if word[i] != word[-i - 1]
        result = false
        break
      else
        i += 1
        true
      end
    end
  end
  result
end

puts palindrome_n('a')
puts palindrome_n('sia')
puts palindrome_n('xanax')