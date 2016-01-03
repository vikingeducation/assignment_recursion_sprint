class Sumdig
  def sumdig_r(number)
    raise ArgumentError, "Argument must be an integer" if !(number.is_a? Integer)
    if number == 0
      0
    elsif number < 1
      sumdig_r(number * -1)
    else
      (number % 10) + sumdig_r((number - (number % 10))/10)
    end
  end

  def sumdig_i(number)
    raise ArgumentError, "Argument must be an integer" if !(number.is_a? Integer)
    total = 0
      if number < 0
        number *= -1
      end
    number.to_s.split('').each do |digit|
      total += digit.to_i
    end
    total
  end
end