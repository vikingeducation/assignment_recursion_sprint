# Recursive and iterative method which returns true if a given string is a palindrome.

# Recursive palindrome finder
def palindrome_i(str)

# Iterative palindrome finder

  counter = str.length / 2

  while counter >= 0
    if (str.length == 0 || str.length == 1)
      return true
    elsif(str[0] != str[-1])
      return false
    else
      str = str[1..-2]
    end
    counter-=1
  end
end

# Recursive palindrome finder
def palindrome_r(str)

  if (str.length == 0 || str.length == 1)
    true
  elsif(str[0] != str[-1])
    false
  else
    palindrome_r(str[1..-2])
  end
end