let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let tempo = parseInt(lines.shift());
let velocidade = parseInt(lines.shift());

let distancia = tempo * velocidade;
let litros = distancia / 12;

console.log(litros.toFixed(3));