let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let X = lines.shift().trim().split(' ').map((x) => parseInt(x));
let Y = lines.shift().trim().split(' ').map((x) => parseInt(x));

let conectores = [];
for(let i = 0; i < 5; ++i){
    conectores.push([X[i], Y[i]]);
}

console.log(conectores.every((x) => x[0] !== x[1]) ? 'Y' : 'N');
