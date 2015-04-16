def palindrome_r(phrase)
  
  phrase = phrase.strip.downcase.gsub(/\s+/, "")
  
  return true if phrase.size == 0 || phrase.size == 1
  
  if phrase[0] == phrase[-1]
    palindrome_r(phrase[1..-2])
  else
    false
  end
  
end

def palindrome_i(phrase)
  
  phrase = phrase.strip.downcase.gsub(/\s+/, "").split("")
  
  count = 1
  
  phrase.each_index do |index|
    if phrase[index] != phrase[phrase.size - count]
      return false
    end
    count += 1
  end
  
  return true
  
end
