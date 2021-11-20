var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let i = 0; i < N; ++i){
    let [QT, S] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let palpites = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let melhor_palpite = palpites.reduce((acc, cur, i) => Math.abs(cur - S) < acc[1] ? [i, Math.abs(cur - S)] : acc, [0, 101])[0] + 1;

    console.log(melhor_palpite);
}
