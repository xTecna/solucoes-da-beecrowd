var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let mapa = [];

const temSabre = (x, y) => {
    for (let i = -1; i < 2; ++i) {
        for (let j = -1; j < 2; ++j) {
            if (i === 0 && j === 0) {
                break;
            }

            if (mapa[x + i][y + j] != 7) {
                return false;
            }
        }
    }

    return mapa[x][y] === 42;
};

let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

for (let i = 0; i < N; ++i) {
    mapa.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
}

let [x, y] = [0, 0];
for (let i = 1; i < N - 1; ++i) {
    for (let j = 1; j < M - 1; ++j) {
        if (temSabre(i, j)) {
            [x, y] = [i + 1, j + 1];
            break;
        }
    }
}

console.log(`${x} ${y}`);