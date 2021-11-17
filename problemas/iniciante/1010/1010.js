let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [codigo1, quantidade1, valor1] = lines.shift().trim().split(" ");
quantidade1 = parseInt(quantidade1);
valor1 = parseFloat(valor1);

let [codigo2, quantidade2, valor2] = lines.shift().trim().split(" ");
quantidade2 = parseInt(quantidade2);
valor2 = parseFloat(valor2);

let valor = quantidade1 * valor1 + quantidade2 * valor2;

console.log(`VALOR A PAGAR: R$ ${valor.toFixed(2)}`);