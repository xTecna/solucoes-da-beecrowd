var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let N = parseInt(lines.shift());

    let suspeitos = lines.shift().trim().split(' ').map((x, i) => [parseInt(x), i + 1]);

    suspeitos.sort((a, b) => b[0] - a[0]);

    console.log(suspeitos[1][1]);
}
