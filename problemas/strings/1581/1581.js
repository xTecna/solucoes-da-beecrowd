var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let K = parseInt(lines.shift());

    let mesmoIdioma = true;
    let idioma = lines.shift().trim();
    for(let i = 1; i < K; ++i){
        let S = lines.shift().trim();

        if(S !== idioma)    mesmoIdioma = false;
    }

    if(mesmoIdioma) console.log(idioma);
    else            console.log("ingles");
}
