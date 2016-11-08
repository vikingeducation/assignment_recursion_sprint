
def sumdig_r(num)
  raise ArgumentError unless num.is_a?(Fixnum)
  if num <= 0
    0
  else
    num % 10 + sumdig_r(num / 10)
  end
end

def sumdig_i(num)
  raise ArgumentError unless num.is_a?(Fixnum)
  sum = 0
  characters = num.to_s.scan(/(-?\d)/).flatten!
  characters.each do |number|
    sum += number.to_i
  end
  sum
end

