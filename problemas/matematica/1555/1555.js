var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const r = (x, y) => (3 * x) * (3 * x) + y * y;
const b = (x, y) => 2 * x * x + (5 * y) * (5 * y);
const c = (x, y) => -100 * x + y * y * y;

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [x, y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let rafael = r(x, y);
    let beto = b(x, y);
    let carlos = c(x, y);

    if (rafael > beto && rafael > carlos)
        console.log('Rafael ganhou');
    else if (beto > carlos)
        console.log('Beto ganhou');
    else
        console.log('Carlos ganhou');
}
