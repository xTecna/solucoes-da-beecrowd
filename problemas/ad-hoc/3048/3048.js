let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

const N = parseInt(lines.shift());

let resposta = 0;
let anterior = -1;
for (let i = 0; i < N; ++i) {
    const atual = parseInt(lines.shift());
    if (atual != anterior) {
        anterior = atual;
        resposta += 1;
    }
}

console.log(resposta);