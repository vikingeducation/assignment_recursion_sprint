#recursive palindrome
def palindrome_r(input, first_call=true)
  return true if input.length == 1 || input.length == 0

  #removes all non-letters (spaces, punctuation, etc.)
  if first_call
    input.downcase!
    letters = input.chars.select { |char| /^[a-z]$/.match(char) }.join
    first_call = false
  else
    letters = input
  end

  #check condition of palindrome
  if letters[0] == letters[-1]
    palindrome_r(letters[1..-2], first_call)
  else
    return false
  end
end

#iterative version
def palindrome_i(input)
  return true if input.length == 1 || input.length == 0

  #removes all non-letters (spaces, punctuation, etc.)
  input.downcase!
  letters = input.chars.select { |char| /^[a-z]$/.match(char) }.join

  #iterate through and check
  (0..letters.length/2).each do |index|
    return false if letters[0 + index] != letters[-1 - index]
  end
  return true
end


# puts palindrome_r("Rise to vote, sir")
# puts palindrome_r("Able was I ere I saw Elba")
# puts palindrome_r("HELLO WHO ARE YOU!?!?")

# puts palindrome_i("Rise to vote, sir")
# puts palindrome_i("Able was I ere I saw Elba")
# puts palindrome_i("HELLO WHO ARE YOU!?!?")
