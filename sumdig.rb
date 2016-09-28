def sumdig_r(n)   #works for positive numbers only
  n = n.to_s.split("").map(&:to_i)
  if n.size == 1
    n[0]
  else
    n[0] + sumdig_r(n[1..-1].join.to_i)
  end
end

def sumdig_i(n)
  n = n.to_s.split("").map(&:to_i)
  n.inject(0) { | p, n | p + n }
end