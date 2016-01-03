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
end