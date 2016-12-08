require 'pry'


def palindrome_r(string)
  return true if string.length == (0 || 1)

  if string[0] == string[-1]
    palindrome_r(string[1..-2])
  else
    return false
  end
end


puts palindrome_r("boat")