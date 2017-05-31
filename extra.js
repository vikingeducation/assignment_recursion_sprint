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

const nicosAlgo = (x, n, minNum = 1) => {
    if (Math.pow(minNum, n) === x) { return 1; }
    if (Math.pow(minNum, n) > x) { return 0; }
    return nicosAlgo(x, n, minNum + 1) + nicosAlgo(x - Math.pow(minNum, n), n, minNum + 1)
}
console.log(nicosAlgo(100, 2));

// Iteration 1
// x = 5, n = 2, minNum = 1
// if (1^2 === 5) return 1; FALSE
// if (1^2 > 5) return 0; FALSE

// Iteration 1.5a
  // x = 5, n = 2, minNum = 2
  // if (2^2 === 5) return 1; FALSE
  // if (2^2 > 5) return 0 ; FALSE

// Iteration 1.5b
  // x = 5 - (1^2), n = 2, minNum = 2
  // if(2^2 === 4) return 1; TRUE
  // if (2^2 > 4) return 0; FALSE


// Given a number as string, remove recurring digits from the given string.
// Examples:
// Input:  num = "1299888833"
// Output: num = "12983"

// Input:  num = "1299888833222"
// Output: num = "12983"
removeRepeats = (n, output = []) => {
  n = n.toString();
  if (n.length === 0) return output.join("")
  if (!output.includes(n[0])) output.push(n[0])
  return removeRepeats(n.slice(1), output);
}
console.log(removeRepeats(1299888833))
console.log(removeRepeats('1299888833222'))
/*

Write a recursive function that outputs the entire song of "99 bottles of beer on the wall"
It should take a single number as input (the beer bottle number to start from)
It should stop at 0 and output "No bottles of beer on the wall"
For all other calls it should output something like:

"99 bottles of beer on the wall"
"99 bottles of beer"
"Ya take one down and pass it around"
"98 bottles of beer on the wall"

...and so on...

Ex:

bottlesOfBeer(100)
//=> ... Full song

*/
const bottlesOfBeer = (n) => {
  console.log(`${n} bottles of beer on the wall`)
  console.log(`${n} bottles of beer`)
  console.log(`Ya take one down and pass it around`)
  if (n===1) return('No bottles of beer on the wall')
  console.log(`${n-1} bottles of beer on the wall!\n\n`)
  return bottlesOfBeer(n-1)
}
console.log(bottlesOfBeer(100))



// Inversion Count
// ```Inversion Count for an array indicates – how far (or close) the array is from being sorted. If array is already sorted then inversion count is 0. If array is sorted in reverse order that inversion count is the maximum.
// Formally speaking, two elements a[i] and a[j] form an inversion if a[i] > a[j] and i < j
// Example:
// The sequence 2, 4, 1, 3, 5 has three inversions (2, 1), (4, 1), (4, 3).
// Task: determine the number of inversions inside an array.```

const inversionCount = (arr=[], count=0, remainder=arr.length) => {
  if(remainder === 0) return count;
  //start at the beginning of the array and count the number of elements that are *less* than this number
  for(let i=0; i<arr.length; i++){
    if(arr[0] > arr[i]) count ++;
  }
  return inversionCount(arr.slice(1), count, arr.length-1)
}
console.log("Inversions in [2,4,1,3,5]: ", inversionCount([2,4,1,3,5]))
