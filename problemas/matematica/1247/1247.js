var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [D, VF, VG] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let tempoFugitivo = 12 / VF;
    let distanciaGuarda = Math.sqrt(144 + D * D);
    let tempoGuarda = distanciaGuarda / VG;

    console.log(`${tempoFugitivo < tempoGuarda ? 'N' : 'S'}`);
}
