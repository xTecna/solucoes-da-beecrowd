var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (A === B || A === C || B === C || A + B === C || A + C === B || B + C === A) {
    console.log('S');
} else {
    console.log('N');
}