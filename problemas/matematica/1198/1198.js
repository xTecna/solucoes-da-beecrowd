var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

lines.pop();

let p = 0;
while (p < lines.length) {
    let [hashmat, oponente] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    console.log(`${hashmat > oponente ? hashmat - oponente : oponente - hashmat}`);
}
