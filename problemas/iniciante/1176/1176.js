var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = Array(61);
let Fibonacci = (n) => {
    if (F[n] === -1) {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
};

F[0] = 0;
F[1] = 1;
for (let i = 2; i < 61; ++i) {
    F[i] = -1;
}

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let N = parseInt(lines.shift());

    console.log(`Fib(${N}) = ${Fibonacci(N)}`);
}