var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());
    let [M, L] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let cartasMarcos = [];
    for (let i = 0; i < M; ++i) {
        cartasMarcos.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
    }

    let cartasLeonardo = [];
    for (let i = 0; i < L; ++i) {
        cartasLeonardo.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
    }

    let [CM, CL] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let A = parseInt(lines.shift());

    if (cartasMarcos[CM - 1][A - 1] > cartasLeonardo[CL - 1][A - 1]) {
        console.log('Marcos');
    } else if (cartasLeonardo[CL - 1][A - 1] > cartasMarcos[CM - 1][A - 1]) {
        console.log('Leonardo');
    } else {
        console.log('Empate');
    }
}