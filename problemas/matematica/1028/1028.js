var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const MDC = (a, b) => (b === 0) ? a : MDC(b, a % b);

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [F1, F2] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(MDC(F1, F2));
}
