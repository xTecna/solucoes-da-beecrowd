let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [n, saldo] = lines.shift().trim().split(" ").map(x => parseInt(x));

var resposta = saldo;
for (let i = 0; i < n; ++i) {
    let movimentacao = parseInt(lines.shift().trim());
    saldo += movimentacao;

    resposta = Math.min(resposta, saldo);
}

console.log(resposta);