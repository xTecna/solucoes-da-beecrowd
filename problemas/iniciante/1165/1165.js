var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const NMAX = 10000001;
let C;

let Crivo = () => {
    C = Array(NMAX);

    C[0] = false;
    C[1] = false;
    C[2] = true;
    for (let i = 4; i < NMAX; i += 2) {
        C[i] = false;
    }
    for (let i = 3; i < NMAX; i += 2) {
        C[i] = true;
    }

    for (let i = 3; i < NMAX; i += 2) {
        if (C[i]) {
            for (let j = 3 * i; j < NMAX; j += 2 * i) {
                C[j] = false;
            }
        }
    }
};

Crivo();

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    if (C[X]) {
        console.log(`${X} eh primo`);
    } else {
        console.log(`${X} nao eh primo`);
    }
}