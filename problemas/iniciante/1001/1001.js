let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

A = parseInt(lines.shift());
B = parseInt(lines.shift());
console.log(`X = ${A + B}`);