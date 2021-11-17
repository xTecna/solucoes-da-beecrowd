let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let R = parseInt(lines.shift());
const PI = 3.14159;

let volume = (4 / 3) * PI * R * R * R;

console.log(`VOLUME = ${volume.toFixed(3)}`);