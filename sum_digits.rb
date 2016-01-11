module SumDigits
  def sum_dig_r(n)
    return n if n < 10
    sum_dig_r(n/10) + sum_dig_r(n%10)
  end

  def sum_dig_i(n)
    n_array = n.to_s.split("")
    sum = 0
    n_array.each { |num| sum += num.to_i }
    sum
  end

end
