class Palindrome

  def palindrome_r(string)
    # raise error if it's not a string.
    raise ArgumentError, "Argument must be a string" if !(string.is_a? String)

    # return true if string length is 0 or 1.
    return true if string.length == 0 || string.length == 1

    # Downcases all letters and then removes any characters that are not in the alphabet (e.g. spaces and punctuation)
    string = string.downcase.split("")
    new_array = []
    string.each do |letter|
      if ("a".."z").include? letter
        new_array << letter
      end
    end
    string = new_array.join("")

    # If it's a two letter word and the first letter and second letter are the same, returns true.
    # elsif first letter and last letter are the same, second the second letter to the second last letter into the recursive method again.
    # else false.
    if string.length == 2 && string[0] == string[-1]
      true
    elsif string[0] == string[-1]
      palindrome_r(string[1..-2])
    else
      false
    end
  end

  def palindrome_i(string)
    # raise error if it's not a string.
    raise ArgumentError, "Argument must be a string" if !(string.is_a? String)

    # return true if string is 0 or 1 in length.
    return true if string.length == 0 || string.length == 1

    # Downcases all letters and then removes any characters that are not in the alphabet (e.g. spaces and punctuation)
    string = string.downcase.split("")
    new_array = []
    string.each do |letter|
      if ("a".."z").include? letter
        new_array << letter
      end
    end
    string = new_array.join("")

    # returns false if first and last character are different.
    index = 0
    while index < string.length do
      if string[index] != string[index * -1 - 1]
        return false
      end
      index += 1
    end
    true
  end
end