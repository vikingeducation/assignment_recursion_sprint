def palindrome_r(string)
	return true if string.length == 1 || string.length == 0
	string_array = string.split('')
	if string[0] == string[-1]
		string_array.pop
		string_array.shift
		palindrome_r(string_array)
	else
		return false
	end
end

puts palindrome_r("lol")
puts palindrome_r("look")