var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [N, Amin, Amax] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let permitidos = 0;
    for (let i = 0; i < N; ++i) {
        let A = parseInt(lines.shift());

        if (A >= Amin && A <= Amax) {
            ++permitidos;
        }
    }

    console.log(permitidos);
}