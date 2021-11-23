var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let entrada = lines.shift().trim();

    if (entrada.startsWith("0x")) {
        console.log(parseInt(entrada, 16));
    } else {
        console.log(`0x${parseInt(entrada).toString(16).toUpperCase()}`);
    }
}
