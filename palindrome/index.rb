def palindrome_r(str)
	if str.length == 1 || str.length == 0
		true
	else
		if str[0] == str[-1]
			palindrome_r(str[1..-2])
		else
			false
		end
	end
end

def palindrome_i(str)
	is_palindrome = true
  palindrome = str
	until palidrome.empty?
		puts palidrome
		if palidrome[0] == palidrome[-1]
			palidrome = palidrome[1..-2]
		else
			is_palindrome = false
			break
		end
	end
	is_palindrome
end

if __FILE__ == $0
	puts "palindrome_r('qwertyuiopoiuytrewq'): #{palindrome_r('qwertyuiopoiuytrewq')}"
	puts "palindrome_r('asdf'): #{palindrome_r('asdf')}"
	puts "palindrome_i('qwertyuiopoiuytrewq'): #{palindrome_i('qwertyuiopoiuytrewq')}"
	puts "palindrome_i('asdf'): #{palindrome_i('asdf')}"
end