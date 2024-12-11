let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let C = parseInt(lines.shift());
let numeros = lines.shift().trim().split(' ').map(x => parseInt(x));

let resposta = numeros.reduce((acc, cur) => acc + cur, 0);
console.log(resposta);