def palindrome_r(string)
  string.gsub!(" ", "")
  string.gsub!(/\W/, "")
  return true if string.length < 2
  if string[0].downcase == string[-1].downcase
    palindrome_r(string[1..-2])
  else
    return false
  end
end






def palindrome_i(string)
  string.gsub!(" ", "")
  string.gsub!(/\W/, "")
  (1..string.length).all? do |i|
    string[-i].downcase == string[i - 1].downcase
  end

end

puts palindrome_r("Able was I asdfere I saw Elba")