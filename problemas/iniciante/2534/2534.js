var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => b - a;

while (lines.length) {
    let [N, Q] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let P = [];
    for (let i = 0; i < N; ++i) {
        P.push(lines.shift());
    }

    P.sort(comp);

    for (let i = 0; i < Q; ++i) {
        N = parseInt(lines.shift());
        console.log(P[N - 1]);
    }
}