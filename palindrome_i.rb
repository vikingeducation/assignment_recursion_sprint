def palindrome_i(string)
	left_index = 0
	right_index = string.size - 1
	loop do
		if (left_index == right_index || left_index == right_index - 1)
			return true
		end
		if (string[left_index] != string[right_index])
			return false
		end
		left_index += 1
		right_index -= 1 
	end
end

string1 = "motor"
string2 = "rotor"
string3 = "aaabbb"
string4 = "daddad"
string5 = "cap"

p "#{string1} is palindrome #{palindrome_i(string1)}"
p "#{string2} is palindrome #{palindrome_i(string2)}"
p "#{string3} is palindrome #{palindrome_i(string3)}"
p "#{string4} is palindrome #{palindrome_i(string4)}"
p "#{string5} is palindrome #{palindrome_i(string5)}"