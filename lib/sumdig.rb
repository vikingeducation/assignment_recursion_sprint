class SumDig
  def sumdig_r(num)
    raise 'Please enter a numeric value' unless num.is_a? Numeric
    return num if num/10 < 1
    return (num % 10) + sumdig_r(num/10)
  end

  def sumdig_i(num)
    raise 'Please enter a numeric value' unless num.is_a? Numeric
    temp = num.to_s
    total = 0
    temp.each_char do |i|
      total += i.to_i
    end

    total
  end
end
