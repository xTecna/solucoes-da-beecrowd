var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let [P, C, Q] = lines.shift().trim().split(' ');
P = parseInt(P);
Q = parseInt(Q);

if (C === '+') {
    if (P + Q <= N)
        console.log("OK");
    else
        console.log("OVERFLOW");
} else {
    if (P * Q <= N)
        console.log("OK");
    else
        console.log("OVERFLOW");
}