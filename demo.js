const newWeirdCalc = (x, n, minNum = 1) => {
    if (Math.pow(minNum, n) === x) { return 1; }
    if (Math.pow(minNum, n) > x) { return 0; }
    return newWeirdCalc(x, n, minNum + 1) + newWeirdCalc(x - Math.pow(minNum, n), n, minNum + 1)
}
console.log(newWeirdCalc(5,2))