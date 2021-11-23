var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let F = Array(101);
F.fill(0);
F[1] = 1;

const Feynman = (n) => {
    if (F[n] === 0) F[n] = Feynman(n - 1) + n * n;
    return F[n];
};

lines.pop();

while (lines.length) {
    let N = parseInt(lines.shift());

    console.log(Feynman(N));
}
