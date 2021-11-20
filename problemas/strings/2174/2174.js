var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let pomekons = new Set();
for(let i = 0; i < N; ++i){
    let S = lines.shift().trim();

    pomekons.add(S);
}

console.log(`Falta(m) ${151 - pomekons.size} pomekon(s).`);
