var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const paesDeQueijoVizinhos = (matriz, i, j) => matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1];

while (lines.length) {
    let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let matriz = [];
    for (let i = 0; i <= N + 1; ++i) {
        matriz.push([]);
        for (let j = 0; j <= M + 1; ++j) {
            matriz[i].push(0);
        }
    }

    for (let i = 1; i <= N; ++i) {
        matriz[i] = [0, ...lines.shift().trim().split(' ').map(x => parseInt(x)), 0];
    }

    let novaMatriz = '';
    for (let i = 1; i <= N; ++i) {
        for (let j = 1; j <= M; ++j) {
            if (matriz[i][j] === 0) {
                novaMatriz += `${paesDeQueijoVizinhos(matriz, i, j)}`;
            } else {
                novaMatriz += '9';
            }
        }
        novaMatriz += '\n';
    }
    console.log(novaMatriz.trim());
}