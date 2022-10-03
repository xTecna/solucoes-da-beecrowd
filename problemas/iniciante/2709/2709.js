var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const Crivo = (C) => {
    for (let i = 0; i < 10001; ++i) {
        C[i] = i % 2;
    }
    C[1] = 0;
    C[2] = 1;

    for (let i = 3; i < 10001; i += 2) {
        if (C[i]) {
            for (let j = 3 * i; j < 10001; j += 2 * i) {
                C[j] = 0;
            }
        }
    }
};

C = [];
Crivo(C);

while (lines.length) {
    let M = parseInt(lines.shift());

    let V = [];
    for (let i = 0; i < M; ++i) {
        V[i] = parseInt(lines.shift());
    }

    let N = parseInt(lines.shift());

    let soma = 0;
    for (let i = M - 1; i > -1; i -= N) {
        soma += V[i];
    }

    if (C[soma])
        console.log("You’re a coastal aircraft, Robbie, a large silver aircraft.");
    else
        console.log("Bad boy! I’ll hit you.");
}