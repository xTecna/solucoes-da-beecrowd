let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let numeros = lines.shift().split(" ").map(x => parseInt(x));

numeros.sort((a, b) => a - b);
console.log(numeros[1]);