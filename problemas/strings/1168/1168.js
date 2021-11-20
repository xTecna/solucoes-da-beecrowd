var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let V = lines.shift().trim().split('').map((x) => parseInt(x));

    let resposta = V.reduce((acc, cur) => acc + leds[cur], 0);

    console.log(`${resposta} leds`);
}
