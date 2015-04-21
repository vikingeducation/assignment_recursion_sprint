# Recursive Palindrome
def palindrome_r(str)
	return true if str.length == 1 || str.length == 0
	# To steralize our string a little bit.
	# The fact that something like this needs to 
	# be included makes me question whether recursion is
	# the best method for this type of question.
	str = str.delete(' ').downcase
	if str[0] == str[-1]
		palindrome_r(str[1..-2])
	else
		false
	end
end

# Interative Palindrome
def palindrome_i(str)
	str = str.delete(' ').downcase
	str == str.reverse ? true : false
end