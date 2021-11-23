var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const mdc = (a, b) => (b === 0) ? a : mdc(b, a % b);

const pitagorica = (a, b, c) => a * a + b * b === c * c || a * a + c * c === b * b || b * b + c * c === a * a;

const primitiva = (a, b, c) => mdc(a, mdc(b, c)) === 1;

while (lines.length) {
    let [x, y, z] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`tripla${pitagorica(x, y, z) ? ` pitagorica${(primitiva(x, y, z) ? ' primitiva' : '')}` : ''}`);
}
