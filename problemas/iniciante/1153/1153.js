var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = [];

let Fatorial = (n) => {
    if (F[n] === -1) {
        F[n] = Fatorial(n - 1) * n;
    }
    return F[n];
};

F[0] = 1;
for (let i = 1; i < 14; ++i) {
    F[i] = -1;
}

let N = parseInt(lines.shift().trim());

console.log(Fatorial(N));