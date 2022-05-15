var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let [PA, PB, G1, G2] = lines.shift().trim().split(' ');
    [PA, PB] = [parseInt(PA), parseInt(PB)];
    [G1, G2] = [parseFloat(G1) / 100, parseFloat(G2) / 100];

    let anos;
    for (anos = 1; PA <= PB && anos < 101; ++anos) {
        PA += Math.floor(PA * G1);
        PB += Math.floor(PB * G2);
    }

    if (PA <= PB) {
        console.log('Mais de 1 seculo.');
    } else {
        console.log(`${anos - 1} anos.`);
    }
}