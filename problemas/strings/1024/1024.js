var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let M = lines.shift().trim().split('');

    M = M.map((x) => x.match(/[A-Za-z]/i) ? String.fromCharCode(x.charCodeAt(0) + 3) : x);
    M.reverse();
    let metade = parseInt(Math.floor(M.length/2));
    M = M.map((x, i) => i < metade ? x : String.fromCharCode(x.charCodeAt(0) - 1));

    let resposta = M.join('');

    console.log(resposta);
}
