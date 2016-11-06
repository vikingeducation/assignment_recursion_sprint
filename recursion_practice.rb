def factorial_r(n)

  return n if n <= 1

  n *= factorial_r(n - 1)
end


def factorial_i(n)
  amount = 1
  n.downto(1) { |num| amount *= num }
  amount
end


def sumdig_r(n)
  return n if n < 10
  (n % 10) + sumdig_r((n / 10))
end


def sumdig_i(n)
  return_value = 0
  ( n.to_s.length).times do
    return_value += (n % 10)
    n /= 10
  end
  return_value
end


def palindrome_r(s)
  return true if s.length <= 1
  return false if s[0] != s[-1]
  palindrome_r(s[1..-2])
end


def palindrome_i(s)
  (s.length / 2).times do
    return true if s.length <= 1
    return false if s[0] != s[-1]
    s = s[1..-2]
  end
  true
end

puts palindrome_i("risetovotesir" )
puts palindrome_i("able was I ere I saw elba")
puts palindrome_i("not a pal")
puts palindrome_i("a")
puts palindrome_i("bb")
puts palindrome_i("ccc")