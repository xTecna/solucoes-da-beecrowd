let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

let m = parseInt(lines.shift());
let a = parseInt(lines.shift());
let b = parseInt(lines.shift());

let c = m - a - b;

console.log(Math.max(a, Math.max(b, c)));
