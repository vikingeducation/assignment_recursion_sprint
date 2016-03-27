def factorial_r number
  return 1 if number == 0

  number * factorial_r(number-1)
end 
puts "factorial_r 4 : #{factorial_r 4}"


def factorial_i number
  result = 1
  (1..number).each do |i|
    result *= i
  end
  result
end
puts "factorial_i 4 : #{factorial_i 4}"


def sumdig_r(number, result = 0)
  if number == 0
    return result 
  else
    result += number % 10 + sumdig_r(number/10, result)
  end
end
puts "sumdig_r 123 : #{sumdig_r(123)}"


def sumdig_i(number)
  number.to_s.split("").inject(0) {|total, num| total+num.to_i }
end
puts "sumdig_i 123 : #{sumdig_i(123)}"


def palindrome_r string
  return true if string.length <= 1
  if string[0] == string[-1]
    palindrome_r string[1..-2]
  else
    false
  end
end
puts "palindrome_r 'hellolleh' : #{palindrome_r 'hellolleh'}"


def palindrome_i string
  (string.length/2).times do |i|
    unless string[i] == string[-1-i]
      return false
    end
  end
  true
end
puts "palindrome_i 'hellolleh': #{palindrome_i 'hellolleh'}"







