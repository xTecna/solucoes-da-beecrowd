var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let [A, B] = lines.shift().trim().split(' ').map(x => parseInt(x));

if (A + B <= N) {
    console.log('Farei hoje!');
} else {
    console.log('Deixa para amanha!');
}