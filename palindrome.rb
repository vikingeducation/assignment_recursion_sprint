def palindrome_r(str)
  return true if str.length == 1 || str.length == 0
  str[0] == str[-1] ? palindrome_r(str[1..-2]) : false
end

# puts palindrome_r("a")
# puts palindrome_r("aa")
# puts palindrome_r("aaaaa")

def palindrome_i(str)
  arr = str.split('').each_with_index do |letter, index|
    return false unless letter == str[-index-1]
  end
  true
end

puts palindrome_i("a")
puts palindrome_i("aa")
puts palindrome_i("barab")
puts palindrome_i("abc")
