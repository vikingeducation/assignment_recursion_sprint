def palindrome_i(string)
	string_array = string.split('')
	while string_array.length > 1
		if string[0] == string[-1]
			string_array.pop
			string_array.shift
		else
			return false
		end
	end
	true
end

puts palindrome_i("lol")
puts palindrome_i("look")