def palindrome_r(sentence)
	return true if sentence.empty?
	return true if sentence.size == 1
	return false if sentence[0] != sentence[-1]
	return palindrome_r(sentence[1..-2])
end

def palindrome_i(sentence)
	while sentence.size > 1
		return false if sentence[0] != sentence[-1]
		sentence = sentence[1..-2]
	end
	return true
end