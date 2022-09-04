var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let paisagem = lines.shift().trim().split(' ').map(x => parseInt(x));

let pico = false, vale = false, mesmoPadrao = true;
for (let i = 1; i < N; ++i) {
    if (paisagem[i] > paisagem[i - 1] && !pico) {
        pico = true;
        vale = false;
    } else if (paisagem[i] < paisagem[i - 1] && !vale) {
        pico = false;
        vale = true;
    } else {
        mesmoPadrao = false;
        break;
    }
}

console.log(mesmoPadrao ? "1" : "0");