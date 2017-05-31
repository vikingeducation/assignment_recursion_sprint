// Timing helpers
numberWithCommas = (x) => {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
let
start,
stop,
runCount=1000000,
formattedRunCount = numberWithCommas(runCount);



////////////////////////
// Factorial
////////////////////////
const factorialIterative = (n) => {
  for (let i = n-1; i>0; i--){
    n *= i;
  }
  return n;
}
console.log("\n\nIterative Factorial, N=5. Answer:", factorialIterative(5))

start = new Date().getTime();
for(let i=0; i<runCount; i++){
  factorialIterative(5)
}
stop = new Date().getTime();
console.log(`factorialIterative took ${stop - start} ms to run ${formattedRunCount} times\n\n`)

const factorialRecursive = (n, prod=1) => {
  if(n===1) return prod
  return factorialRecursive(n-1, n*prod)
}
console.log("Recursive Factorial, N=5. Answer:", factorialRecursive(5))

start = new Date().getTime();
for(let i=0; i<runCount; i++){
  factorialRecursive(5)
}
stop = new Date().getTime();
console.log(`factorialRecursive took ${stop - start} ms to run ${formattedRunCount} times\n\n`)




//////////////////////////
// Sum Digit
//////////////////////////
const sumdigIterative = (n) => {
  return n.toString().split('').reduce((acc, val) => (
    acc + Number(val)
  ), 0)
}
console.log("Sum Dig Iterative, n=103. Answer:", sumdigIterative(103))

start = new Date().getTime();
for(let i=0; i<runCount; i++){
  sumdigIterative(103)
}
stop = new Date().getTime();
console.log(`sumdigIterative took ${stop - start} ms to run ${formattedRunCount} times\n\n`)

// First solution, moves forward to back through the input param
const sumdigRecursive = (n) => {
  n = n instanceof Array ? n : n.toString().split('')
  if (n.length === 1) return Number(n[0])
  let firstNum = Number(n[0])
  let secondNum = Number(n[1])
  n = n.slice(2)
  n.unshift(firstNum + secondNum)
  return sumdigRecursive(n)
}
console.log("Sum Dig Recursive, n=103. Answer:", sumdigRecursive(103))

start = new Date().getTime();
for(let i=0; i<runCount; i++){
  sumdigRecursive(103)
}
stop = new Date().getTime();
console.log(`sumdigRecursive took ${stop - start} ms to run ${formattedRunCount} times\n\n`)

// Better solution, moves backwards to front through the input param
const sumDigRecursiveTwo = (n) => {
  let remainder = n % 10
  if (n < 10 ) return n
  return remainder += sumDigRecursiveTwo(Math.floor(n/10))
}
console.log("Sum Dig Recursive Two, n=103. Answer:", sumDigRecursiveTwo(103))

start = new Date().getTime();
for(let i=0; i<runCount; i++){
  sumDigRecursiveTwo(103)
}
stop = new Date().getTime();
console.log(`sumDigRecursiveTwo took ${stop - start} ms to run ${formattedRunCount} times\n\n`)





///////////////////////////
// Palindrome
///////////////////////////
const palindromeIterative = (str) => {
  let output = []
  str = str.split('').map((letter) => (
    letter.toLowerCase()
  ))
  for(let i=str.length-1; i>=0; i--){
    output.push(str[i])
  }
  return output.join('') === str.join('')
}
console.log("palindromeIterative, str='racecar123'. Answer:", palindromeIterative('racecar123'))
console.log("palindromeIterative, str='racecar'. Answer:", palindromeIterative('racecar'))

start = new Date().getTime();
for(let i=0; i<runCount; i++){
  palindromeIterative('racecar')
}
stop = new Date().getTime();
console.log(`palindromeIterative took ${stop - start} ms to run ${formattedRunCount} times\n\n`)

const palindromeRecursive = (str) => {
  if (str.length <= 1) return true
  return str[0].toLowerCase() === str[str.length-1]
    ? palindromeRecursive(str.slice(1, -1))
    : false
}

console.log("palindromeRecursive, str='racecar123'. Answer:", palindromeRecursive('racecar123'))
console.log("palindromeRecursive, str='racecar'. Answer:", palindromeRecursive('racecar'))

start = new Date().getTime();
for(let i=0; i<runCount; i++){
  palindromeRecursive('racecar')
}
stop = new Date().getTime();
console.log(`palindromeRecursive took ${stop - start} ms to run ${formattedRunCount} times\n\n`)





////////////////
// Given two numbers x and n, find number of ways x can be expressed as sum of n-th power of unique natural numbers.
/////////////////
// Input  : x = 10, n = 2
// Output : 1
// Explanation: 10 = 1^2 + 3^2,
// Hence total 1 possibility

// Input  : x = 100, n = 2
// Output : 3
// Explanation: 100 = 10^2
//              OR 6^2 + 8^2
//              OR 1^2 + 3^2 + 4^2 + 5^2 + 7^2
// Hence total 3 possibilities

const uniquePowers = (x, n, sum=0) => {
  // first, get all options where number ^ n < x
  // then, for each of these options, check whether it, summed with any other elements in the array, equals x

  let options = []
  for (let i=1; i<x; i++) {
    if(Math.pow(i,n) < x) options.push(i)
  }
  options.forEach((option) => {

  })
  console.log("Power options", options)
}
uniquePowers(100, 2)



