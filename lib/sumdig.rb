class Sumdig
  def sumdig_r(number)
    raise ArgumentError, "Argument must be an integer" if !(number.is_a? Integer)
    if number == 0
      0
    elsif number < 0
      sumdig_r(number * -1)
    else
      (number % 10) + sumdig_r(number / 10)
    end
  end

  def sumdig_i(number)
    raise ArgumentError, "Argument must be an integer" if !(number.is_a? Integer)
    total = 0
    if number < 0
      number *= -1
    end
    while number > 0
      total += number % 10
      number /= 10
    end
    total
  end
end