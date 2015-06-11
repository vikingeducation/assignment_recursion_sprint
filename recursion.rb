class Recursion

  def factorial_r(integer)
    # base: 0! = 1
    if integer == 0
      return 1
    else
      # recursion: n! = n * (n-1)!
      integer * factorial_r(integer - 1)
    end

  end


  def factorial_i(integer)
    output = 1

    unless integer == 0
      integer.downto(1) do |int|
        output *= int
      end
    end

    output
  end


  def sumdig_r(integer)

    #base: when one digit left (< 10)
    if integer < 10
      return integer
    else
      # grab last digit & push remaining digits back through sumdig
      integer % 10 + sumdig_r(integer / 10)
    end

  end


  def sumdig_i(integer)

    array = integer.to_s.split("").map { |str| str.to_i }
    array.inject { |sum, digit| sum += digit }

  end


  def palindrome_r?(string)
    # base: 0 or 1 letters always true
    if string.length <= 1
      return true
    else
      # recursion: do outer layers match && are inner letters palindrome?
      string[0] == string[-1] && palindrome_r?(string[1..-2])
    end

  end


  def palindrome_i?(string)
    midpoint = string.length / 2

    result = true

    1.upto(midpoint) do |index|
      result = false unless string[index - 1] == string[-index]
    end

    result

  end

end