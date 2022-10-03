var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    let [resposta, contador] = [0, 0];
    while (X > 0) {
        if (X % 2 === 1) {
            ++contador;
        } else {
            resposta = Math.max(resposta, contador);
            contador = 0;
        }
        X = Math.floor(X / 2);
    }
    resposta = Math.max(resposta, contador);

    console.log(resposta);
}