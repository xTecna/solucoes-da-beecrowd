var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => a[0] - b[0];

let p = 0;
while (p < lines.length) {
    let N = parseInt(lines[p++]);
    let pontos = [];
    for (let i = 0; i < N; ++i) {
        let numeros = lines[p++].trim().split(' ').map(x => parseInt(x));
        pontos.push([numeros[0], numeros[1]]);
    }
    pontos.sort(comp);

    let DP = [];
    DP.push([1, 1]);
    let resposta = 1;
    for (let i = 1; i < N; ++i) {
        DP.push([1, 1]);

        for (let j = 0; j < i; ++j) {
            if (pontos[i][0] == pontos[j][0]) {
                break;
            }

            if (pontos[i][1] - pontos[j][1] === 2) {
                // Descendo, acrescentando mais um no caso em que j está acima
                DP[i][1] = Math.max(DP[i][1], DP[j][0] + 1);
            } else if (pontos[i][1] - pontos[j][1] === -2) {
                // Subindo, acrescentando mais um no caso em que j está abaixo
                DP[i][0] = Math.max(DP[i][0], DP[j][1] + 1);
            }
        }

        resposta = Math.max(resposta, DP[i][0], DP[i][1]);
    }

    console.log(resposta);
}