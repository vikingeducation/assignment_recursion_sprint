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
