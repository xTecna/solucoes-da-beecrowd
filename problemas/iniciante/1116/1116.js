var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (Y === 0) {
        console.log("divisao impossivel");
    } else {
        console.log((X / Y).toFixed(1));
    }
}