class Palindrome

  def palindrome_r(string)
    # raise error if it's not a string.
    raise ArgumentError, "Argument must be a string" if !(string.is_a? String)

    # return true if string length is 0 or 1.
    return true if string.length < 2

    # Downcases all letters and then removes any characters that are not in the alphabet (e.g. spaces and punctuation)
    string = downcase_remove_spaces_and_punctuation(string)

    # If it's a two letter word and the first letter and second letter are the same, returns true.
    # elsif first letter and last letter are the same, second the second letter to the second last letter into the recursive method again.
    # else false.
    (string.downcase[0] == string.downcase[-1]) && palindrome_r( string[1..-2] )
  end

  def palindrome_i(string)
    # raise error if it's not a string.
    raise ArgumentError, "Argument must be a string" if !(string.is_a? String)

    # return true if string is 0 or 1 in length.
    return true if string.length < 2

    # Downcases all letters and then removes any characters that are not in the alphabet (e.g. spaces and punctuation)
    string = downcase_remove_spaces_and_punctuation(string)

    # returns false if first and last character are different.
    while string.length >= 2
      return false if string[0] != string[-1]
      string = string[1..-2]
    end
    true
  end

  def downcase_remove_spaces_and_punctuation(string)
    string = string.downcase.split("")
    new_array = []
    string.each do |letter|
      if ("a".."z").include? letter
        new_array << letter
      end
    end
    string = new_array.join("")
  end
end