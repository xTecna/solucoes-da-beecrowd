var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let F = Array(41);
F.fill(-1);
F[0] = 1;
F[1] = 1;

const Fibonacci = (n) => {
    if (F[n] == -1) F[n] = Fibonacci(n - 1) + Fibonacci(n - 2);
    return F[n];
};

lines.pop();

while (lines.length) {
    let N = parseInt(lines.shift());

    console.log(Fibonacci(N));
}
