def sumdig_r integer
  return integer if integer < 10
  integer % 10 + sumdig_r(integer/10)
end

# Different way, just for fun
def sumdig_i integer
  frontend = ((integer.to_s)[0]).to_i
  backend = ((integer.to_s)[-1]).to_i
  sum = 0
  iter = 0
  until frontend == backend
    sum += frontend
    iter += 1
    frontend = ((integer.to_s)[iter]).to_i
  end
end