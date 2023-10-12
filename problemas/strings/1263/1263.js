var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let palavras = lines.shift().toLowerCase().trim().split(' ');

    let aliteracoes = 0;

    let letraAtual = palavras[0][0];
    let tamanhoAliteracao = 1;
    for(let i = 1; i < palavras.length; ++i){
        if(palavras[i][0] !== letraAtual){
            if(tamanhoAliteracao > 1){
                aliteracoes += 1;
            }
            letraAtual = palavras[i][0];
            tamanhoAliteracao = 1;
        }else{
            tamanhoAliteracao += 1;
        }
    }
    if(tamanhoAliteracao > 1){
        aliteracoes += 1;
    }

    console.log(aliteracoes);
}