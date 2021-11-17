let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

const maior = (a, b) => (a + b + Math.abs(a - b)) / 2;

let [a, b, c] = lines.shift().split(" ").map((x) => parseInt(x));

let resposta = maior(a, maior(b, c));

console.log(`${resposta} eh o maior`);