var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

const LIMITE = 3502;
const PRIMO_LIMITE = 32612;

let F = new Array(LIMITE);
let C = new Array(PRIMO_LIMITE);
let primos = [];

const Crivo = () => {
    C[0] = false;
    C[1] = false;

    C[2] = true;
    primos.push(2);

    for (let i = 3; i < PRIMO_LIMITE; ++i) {
        C[i] = (i % 2 === 1);
    }

    for (let i = 3; i < PRIMO_LIMITE; ++i) {
        if (C[i]) {
            primos.push(i);
            for (let j = 3 * i; j < PRIMO_LIMITE; j += 2 * i) {
                C[j] = false;
            }
        }
    }
};

const josephus = (n, k) => {
    if (F[n][k] === -1) {
        F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
    }
    return F[n][k];
};

Crivo();

for (let i = 0; i < LIMITE; ++i) {
    F[i] = new Array(LIMITE);
    for (let j = 0; j < LIMITE; ++j) {
        F[i][j] = -1;
    }
}

for (let i = 0; i < LIMITE; ++i) {
    F[1][i] = 1;
}

while (lines.length) {
    let n = parseInt(lines.shift());

    console.log(josephus(n, 0));
}