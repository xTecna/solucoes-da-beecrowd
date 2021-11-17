let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let segundos = parseInt(lines.shift());

let horas = Math.floor(segundos / 3600);
segundos %= 3600;
let minutos = Math.floor(segundos / 60);
segundos %= 60;

console.log(`${horas}:${minutos}:${segundos}`);