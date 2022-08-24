var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const PI = 3.14;
while (lines.length) {
    let V = parseFloat(lines.shift());
    let D = parseFloat(lines.shift());

    D /= 2;

    let area = PI * D * D;
    let altura = V / area;

    console.log(`ALTURA = ${altura.toFixed(2)}`);
    console.log(`AREA = ${area.toFixed(2)}`);
}