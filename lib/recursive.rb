def factorial_r(x)
  if x < 0
    raise(ArgumentError, "No factorial of negative numbers; Argument given #{x}")
  elsif x == 0
    1
  else
    x * factorial_r(x-1)
  end
end


def factorial_i(x)
  if x < 0
    raise(ArgumentError, "No factorial of negative numbers; Argument given #{x}")
  else
    result = 1
    i = x
    while i > 0 do
      result *= i
      i -= 1
    end
    result
  end
end

def sumdig_r(x)
  x / 10 == 0 ? x % 10 : x % 10 + sumdig_r(x/10)
end

def sumdig_i(x)
  result = 0
  while x / 10 > 0 do
    result += x % 10
    x /= 10
  end
  result
end

def palindrome_r(x)
  x.delete!(" ,")
  x.downcase!
  if x.length < 2
    true
  elsif x[0] == x[-1]
    palindrome_r(x[1..-2])
  else
    false
  end
end

def palindrome_i(x)
  x.delete!(" ,")
  x.downcase!
  response = true
  while x.length > 2 do
    if x[0] == x[-1]
      x = x[1..-2]
    else
      response = false
      break
    end
  end
  response
end

testnumbers = (0..10).to_a

puts("\n Recursive Factorial")

testnumbers.each { |x|
  puts("factorial(#{x}) = #{factorial_r(x)}")
  }


puts("\n Iterative Factorial")

testnumbers.each { |x|
  puts("factorial(#{x}) = #{factorial_i(x)}")
  }

x = 1234
puts("\n\nsumdig(1234) = #{sumdig_r(x)}")

x = 4567
puts("\n\nsumdig_i(4567) = #{sumdig_i(x)}")

puts(palindrome_r("xivvx"))

puts(palindrome_i("falambbmalaf"))

puts(palindrome_i("Rise to vote, sir"))

puts(palindrome_r("Rise to vote, sir"))
