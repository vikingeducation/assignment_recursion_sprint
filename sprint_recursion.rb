#sprint_recursion.rb

def factorial_r(n)
  return 1 if n <= 1
  n * factorial_r(n - 1)
end

def factorial_i(n)
  return 1 if n <= 1

  n.downto(1).reduce(1) do |product, item|
  product * item
  end
end

def sumdig_i(n)
  raise ArgumentError if n.class != Fixnum
  arr = n.to_s.chars
  sum = 0
  arr.each {|num| sum += num.to_i }
  sum
end

def sumdig_r(n)
  return n if n < 10
  arr = n.to_s.chars
  num = arr.pop.to_i
  binding.pry
  num +  sumdig_r(arr.join("").to_i)
end

def palindrom_i(n)

end

def palindrom_r(n)
end



