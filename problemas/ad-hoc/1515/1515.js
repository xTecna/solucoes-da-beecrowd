let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

while (true) {
    let N = parseInt(lines.shift());
    if (N == 0) {
        break;
    }

    let resposta = '';
    let menor_ano = 9999;
    for (let i = 0; i < N; ++i) {
        let [planeta, A, T] = lines.shift().trim().split(' ');

        let ano_envio = parseInt(A) - parseInt(T);
        if (ano_envio < menor_ano) {
            menor_ano = ano_envio;
            resposta = planeta;
        }
    }

    console.log(resposta);
}