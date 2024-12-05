let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

let n = parseInt(lines.shift());

console.log(Math.floor(((n + 1) * (n + 2)) / 2));
