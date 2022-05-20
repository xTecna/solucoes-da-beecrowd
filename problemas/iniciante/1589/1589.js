var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let [R1, R2] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    console.log(R1 + R2);
}