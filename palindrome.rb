def palindrome_r(word)
  if word.size == 1 || word.size == 0
    true
  elsif word[0] == word[-1]
    palindrome(word[1...-1])
  else
    false
  end
end

def palindrome_i(word)

end