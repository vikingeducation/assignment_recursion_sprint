#recursive warmup

def factorial_r(n)
  return 1 if n == 1

  return n * factorial_r(n-1)
end


def factorial_i(n)
  product = 1

  (1..n).each do |factor|
    product *= factor
  end

  product
end

def sumdig_r(n)
  return n if n.to_s.size == 1

  sum = 0
  divisor = ("1" + "0"*(n.to_s.size-1)).to_i

  quotient, modulus = n.divmod(divisor)

  return quotient + sumdig_r(modulus)
end

# makes no sense to do the above logic using iteration
# so I will just do it using an easier method
def sumdig_i(n)
  sum = 0
  digits = n.to_s.split("")
  digits.each do |d|
    sum += d.to_i
  end

  sum
end

def palindrome_r(word)
  return true if word.size == 1 || word.size == 0

  if word[0] == word[-1]
    palindrome_r(word[1..-2])
  else
    return false
  end
end

def palindrome_i(word)
  is_palindrome = true
  i = 0
  (word.size/2).times do
    is_palindrome = false if word[i] != word[word.size-(i+1)]
    i+=1
  end

  is_palindrome
end


