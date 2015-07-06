
def palindrome_r(string) 
  return true if string.length <= 1

  if string[0] == string[- 1]
    palindrome_r(string[1..-2])
  else
    return false
  end

end


def palindrome_i(string) #civic #poop

  start = 0
  finish = string.length - 1

  while finish - start >= 1

    unless string[start] == string[finish]
      return false
    end
    start +=1
    finish -=1

  end

  return true

end


