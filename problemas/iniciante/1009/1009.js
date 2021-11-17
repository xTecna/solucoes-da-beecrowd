let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let vendedor = lines.shift();
let salario = parseFloat(lines.shift());
let vendas = parseFloat(lines.shift());

let total = salario + 0.15 * vendas;

console.log(`TOTAL = R$ ${total.toFixed(2)}`);