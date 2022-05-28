var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let T = [];
for (let i = 0; i < 2; ++i) {
    T[i] = Array(1001);
    T[i].fill(0);
}
for (let i = 2; i < 101; ++i) {
    T[i] = Array(1001);
    T[i].fill(-1);
}

const sobrevivente = (n, k) => {
    if (T[n][k] === -1) {
        T[n][k] = (sobrevivente(n - 1, k) + k) % n;
    }
    return T[n][k];
};

lines.pop();

while (lines.length) {
    let N = parseInt(lines.shift().trim());

    let m = 1;
    while ((sobrevivente(N - 1, m) + 1) % N != 12) {
        ++m;
    }

    console.log(m);
}