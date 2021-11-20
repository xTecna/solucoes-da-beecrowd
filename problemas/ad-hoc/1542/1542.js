var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let [Q, D, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    L = Math.floor((Q * D * P) / (P - Q));

    console.log(`${L.toFixed(0)} pagina${L > 1 ? 's' : ''}`);
}
