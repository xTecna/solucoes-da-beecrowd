var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let [reais, centavos] = lines.shift().trim().split('.').map((x) => parseInt(x));
let valor = 100 * reais + centavos;

notas = [10000, 5000, 2000, 1000, 500, 200];
moedas = [100, 50, 25, 10, 5, 1];

console.log("NOTAS:");
notas.forEach((nota) => {
    console.log(`${Math.floor(valor / nota).toFixed(0)} nota(s) de R$ ${(nota / 100).toFixed(2)}`);
    valor %= nota;
});

console.log("MOEDAS:");
moedas.forEach((moeda) => {
    console.log(`${Math.floor(valor / moeda).toFixed(0)} moeda(s) de R$ ${(moeda / 100).toFixed(2)}`);
    valor %= moeda;
});