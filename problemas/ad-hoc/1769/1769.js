var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let cpf = lines.shift().trim().replace(/[-.]/g, '').split('').map((x) => parseInt(x));

    let soma = 0;
    for(let i = 0; i < 9; ++i){
        soma += (i + 1) * cpf[i];
    }

    soma %= 11;
    if(soma === 10)   soma = 0;

    if(soma === cpf[9]){
        soma = 0;
        for(let i = 0; i < 9; ++i){
            soma += (9 - i) * cpf[i];
        }

        soma %= 11;
        if(soma === 10) soma = 0;

        if(soma === cpf[10]){
            console.log('CPF valido');
        }else{
            console.log('CPF invalido');
        }
    }else{
        console.log('CPF invalido');
    }
}
