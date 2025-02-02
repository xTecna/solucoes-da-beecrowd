let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());
let Q = parseInt(lines.shift());

let mesas = [];
for (let i = 0; i <= N; ++i) {
    mesas.push(i);
}

for (let i = 0; i < Q; ++i) {
    let numeros = lines.shift().trim().split(" ").map(x => parseInt(x));
    let e = numeros[0];
    let a = numeros[1];

    if (e == 1) {
        let b = numeros[2];

        let temp = mesas[a];
        mesas[a] = mesas[b];
        mesas[b] = temp;
    } else {
        var mesa = mesas[a];
        var resposta = 0;
        while (mesa != a) {
            resposta += 1;
            mesa = mesas[mesa];
        }

        console.log(resposta);
    }
}