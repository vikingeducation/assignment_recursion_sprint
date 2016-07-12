# palindrome_i.rb

def palindrome_i(str)

  holder = ""

  str.chars.reverse_each { |char| holder << char }

  str == holder 
end
