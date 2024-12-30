let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

N = parseInt(lines.shift());
console.log(N + 1);