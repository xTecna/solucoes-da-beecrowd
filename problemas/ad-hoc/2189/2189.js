let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let teste = 1;
while (true) {
    let n = parseInt(lines.shift());

    if (n == 0) {
        break;
    }

    let numeros = lines.shift().trim().split(' ').map(x => parseInt(x));

    let resposta = -1;
    for (let i = 0; i < n; ++i) {
        if (i + 1 == numeros[i]) {
            resposta = i + 1;
        }
    }

    console.log(`Teste ${teste}`);
    console.log(resposta);
    console.log('');

    teste += 1;
}