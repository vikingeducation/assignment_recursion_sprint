module Palindrome

  def palindrome_r(str)
    return true if str.length < 2

    if str[0] == str[-1]
      palindrome_r(str[1..-2])
    else
      false
    end
  end


  def palindrome_i(str)
    arr = str.split("")
    while arr.length > 1
      first = arr.shift
      last = arr.pop
      return false unless first == last
    end
    true
  end
end
