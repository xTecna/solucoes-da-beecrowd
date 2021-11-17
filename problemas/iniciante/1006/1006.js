let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let A = parseFloat(lines.shift());
let B = parseFloat(lines.shift());
let C = parseFloat(lines.shift());

let media = (2 * A + 3 * B + 5 * C) / 10;

console.log(`MEDIA = ${media.toFixed(1)}`);