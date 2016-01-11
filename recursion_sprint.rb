def factorial_r(number)
  return number if number <= 1
  number * factorial_r(number - 1)
end

def factorial_i(number)
  (1..number).to_a.inject do |prod,term|
    prod *= term
  end
end

def sumdig_r(number)
  number < 10 ? number : (number % 10) + sumdig_r(number / 10)
end

def sumdig_i(number)
  number.to_s.chars.inject(0) do |sum,term|
    sum += term.to_i
  end
end

def palindrome_r(str)
  return true if str.length <= 1
  return false if str[0] != str[-1]

  palindrome_r(str[1..-2])
end

def palindrome_i(str)
  (str.length / 2).times do |index|
    return false if str[index] != str[-index - 1]
  end

  true
end
