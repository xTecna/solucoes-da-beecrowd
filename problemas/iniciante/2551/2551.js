var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    let Vmax = 0;
    for (let i = 1; i <= N; ++i) {
        let [T, D] = lines.shift().trim().split(' ').map(x => parseInt(x));

        let V = D / T;
        if (V > Vmax) {
            Vmax = V;
            console.log(i);
        }
    }
}