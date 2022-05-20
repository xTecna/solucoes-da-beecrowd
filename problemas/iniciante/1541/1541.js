var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (A === 0) {
        break;
    }

    console.log((Math.floor(Math.sqrt(A * B * 100.0 / C))).toFixed(0));
}