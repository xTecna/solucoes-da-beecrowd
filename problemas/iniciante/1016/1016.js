let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let X = parseInt(lines.shift());

console.log(`${2 * X} minutos`);