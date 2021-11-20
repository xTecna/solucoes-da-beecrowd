var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let alfabeto = lines.shift();
    let deslocamento = parseInt(lines.shift());

    let resposta = alfabeto.trim().split('').map((x) => String.fromCharCode(((x.charCodeAt(0) - 65 - deslocamento + 26) % 26) + 65)).join('');

    console.log(resposta);
}
