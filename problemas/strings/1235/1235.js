var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let frase = lines.shift();

    let metade1 = frase.substring(0, frase.length/2).split('').reverse().join('');
    let metade2 = frase.substring(frase.length/2).split('').reverse().join('');
    
    console.log(metade1 + metade2);
}
