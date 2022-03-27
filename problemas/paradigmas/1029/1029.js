var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = Array(40);
let CF = Array(40);

const calcula = (n) => {
    if (F[n] === -1) {
        let [result1, num_calls1] = calcula(n - 1);
        let [result2, num_calls2] = calcula(n - 2);

        F[n] = result1 + result2;
        CF[n] = num_calls1 + num_calls2 + 1;
    }

    return [F[n], CF[n]];
};

F.fill(-1);
CF.fill(-1);

F[0] = 0;
F[1] = 1;

CF[0] = 1;
CF[1] = 1;

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    let [result, num_calls] = calcula(X);

    console.log(`fib(${X}) = ${num_calls - 1} calls = ${result}`);
}