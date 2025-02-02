let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [n, x] = lines.shift().trim().split(" ").map(x => parseInt(x));
let alturas = lines.shift().trim().split(" ").map(x => parseInt(x));

let resposta = 1;
let acumulado = 1;
for (let i = 1; i < n; ++i) {
    if (alturas[i] - alturas[i - 1] <= x) {
        acumulado += 1;
    } else {
        resposta = Math.max(resposta, acumulado);
        acumulado = 1;
    }
}
resposta = Math.max(resposta, acumulado);

console.log(resposta);