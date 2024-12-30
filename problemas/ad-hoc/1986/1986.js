let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let n = parseInt(lines.shift());
let letras = lines.shift().trim().split(' ').map(x => parseInt(x, 16));

console.log(letras.map(x => String.fromCharCode(x)).join(''));