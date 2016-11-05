
def recursive_palindrome(string)
  if string.length <= 1
    true
  elsif string[0] == string[-1]
    recursive_palindrome(string[1...-1])
  else
    false
  end
end

def iterative_palindrome(string)
  string.each_char.with_index do |character, index|
    index += 1
    return false unless character == string[-index]
  end
  true
end


