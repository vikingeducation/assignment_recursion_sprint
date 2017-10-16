def palindrome_r(word)
  word.downcase!
  if word.size == 0 || word.size == 1
    true
  elsif word[0] == word[-1]
    palindrome_r(word[1...-1])
  else
    false
  end
end

def palindrome_i(word)
  word.downcase!
  while word.size != 0 && word.size != 1
    if word[0] == word[-1]
      word = word[1...-1]
    else
      break
    end
  end
  word.size == 0 || word.size == 1 ? true : false
end