class Palindrome
  def palindrome_r(str)
    raise "Please enter a string" unless str.is_a? String
    string_to_check = str.downcase
    return false unless string_to_check[0] == string_to_check[-1]
    return true if string_to_check.length == 1 || (string_to_check.length == 2 && (string_to_check[0] == string_to_check[-1]))
    string_to_check[0], string_to_check[-1] = '', ''
    return palindrome_r(string_to_check)
  end

  def palindrome_i(str)
    raise "Please enter a string" unless str.is_a? String
    string_to_check = str.downcase
    string_start = 0
    string_end = str.length - 1

    until string_start >= string_end
      return false if string_to_check[string_start] != string_to_check[string_end]
      string_start += 1
      string_end -=1
    end

    return true
  end
end
