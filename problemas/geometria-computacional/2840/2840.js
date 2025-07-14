var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let [R, L] = lines
  .shift()
  .trim()
  .split(" ")
  .map((x) => parseInt(x));

let pi = 3.1415;
let V = (4.0 * pi * R * R * R) / 3.0;

console.log(Math.floor(L / V));
