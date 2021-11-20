var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let frase = lines.shift().trim();

    let letras = new Set();

    for(let i = 0; i < frase.length; ++i){
        if(/[a-z]/.test(frase[i]))  letras.add(frase[i]);
    }

    if(letras.size == 26)       console.log("frase completa");
    else if(letras.size > 12)   console.log("frase quase completa");
    else                        console.log("frase mal elaborada");
}
