let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

let n = parseInt(lines.shift());
console.log(n - 2);
