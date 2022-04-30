var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (X === Y) {
        break;
    }

    if (X < Y) {
        console.log("Crescente");
    } else {
        console.log("Decrescente");
    }
}