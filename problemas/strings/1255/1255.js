var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let frase = lines.shift().trim().toLowerCase().split('');

    let frequencias = frase.reduce((acc, cur) => {
        if(/[A-Za-z]/.test(cur)){
            if(!(cur in acc)) acc[cur] = 0;
            acc[cur] += 1;
        }
        return acc;
    }, {});
    let maior = Object.values(frequencias).reduce((acc, cur) => acc < cur ? cur : acc, 0);
    
    let resposta = [];
    for (let letra in frequencias){
        if(frequencias[letra] === maior)    resposta.push(letra);
    }

    resposta.sort();
    console.log(resposta.join(''));
}
