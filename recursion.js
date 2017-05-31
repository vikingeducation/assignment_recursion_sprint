
const factorialIterative = (n) => {
  for (let i = n-1; i>0; i--){
    n *= i;
  }
  return n;
}

console.log("Iterative Factorial, N=5", factorialIterative(5))

const factorialRecursive = (n) => {
  return n == 1
    ? n
    : n*factorialRecursive(n-1)
}
console.log("Recursive Factorial, N=5", factorialRecursive(5))