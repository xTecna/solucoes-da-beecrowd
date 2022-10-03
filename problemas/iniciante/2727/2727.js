var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    for (let i = 0; i < N; ++i) {
        let pontos = lines.shift().trim().split(' ');
        console.log(String.fromCharCode(97 + 3 * (pontos.length - 1) + pontos[0].length - 1));
    }
}