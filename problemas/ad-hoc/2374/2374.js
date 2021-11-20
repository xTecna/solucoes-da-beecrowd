let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());
let M = parseInt(lines.shift());

console.log(N - M);
