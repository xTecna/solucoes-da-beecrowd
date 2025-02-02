let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [n, x, y] = lines
  .shift()
  .trim()
  .split(" ")
  .map((x) => parseInt(x));
console.log((n / (x + y)).toFixed(2));
