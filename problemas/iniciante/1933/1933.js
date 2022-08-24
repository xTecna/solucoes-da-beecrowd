var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (A === B) {
    console.log(A);
} else {
    console.log(Math.max(A, B));
}