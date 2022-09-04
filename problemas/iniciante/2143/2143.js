var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let T = parseInt(lines.shift());

    for (let i = 0; i < T; ++i) {
        let N = parseInt(lines.shift());

        let pontas = 2 - (N % 2);
        console.log(pontas + 2 * (N - pontas));
    }
}