var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for(let i = 0; i < T; ++i){
    let [A, B] = lines.shift().trim().split(' ');

    let diferenca = 0;
    for(let j = 0; j < A.length; ++j){
        diferenca += (B.charCodeAt(j) - A.charCodeAt(j) + 26) % 26;
    }

    console.log(diferenca);
}
