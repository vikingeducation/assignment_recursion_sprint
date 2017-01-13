def palindrome_r(string)
  return true if string.size < 2
  return false unless string[0] == string[-1]
  palindrome_r(string[1..-2]) 
end

def palindrome_i(string)
  (string.length/2).times do |i|
    return false unless string[i] == string [-i-1]
  end
  true
end

p palindrome_r('rotor')
p palindrome_r('abcdefghhgfedcba')
p palindrome_r('anthona')

p palindrome_i('rotor')
p palindrome_i('abcdefghhgfedcba')
p palindrome_i('anthona')