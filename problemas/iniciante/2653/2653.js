var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let joias = new Set();

let p = 0;
while (p < lines.length) {
    let joia = lines[p++].trim();
    joias.add(joia);
}

console.log(joias.size);