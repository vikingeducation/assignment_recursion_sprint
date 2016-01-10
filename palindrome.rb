def palindrome_r(string)
  return false if string[0] != string[string.length-1]
  return true if string.length <= 1
  return true if palindrome_r(string[1,string.length-2])
end

puts palindrome_r("toot")

def palindrome_i(string)
  return true if string.length <= 1
  string.split('').each_with_index do |item, index|

    if string[index] != string[index + 1 * -1]
      return false
    end

  end
  true
end

puts palindrome_r("too oot")