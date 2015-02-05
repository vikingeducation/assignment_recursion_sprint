def palindrome_r(string)
  stripped_string = string.downcase.gsub(/[^a-z]/, '')
  return true if [0,1].include? stripped_string.length
  first = stripped_string[0]
  last = stripped_string[-1]
  first == last && palindrome_r(stripped_string[1..-2])
end

def palindrome_i(string)
  
end