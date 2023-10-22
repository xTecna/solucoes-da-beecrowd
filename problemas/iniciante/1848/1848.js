var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const valor = (simbolo) => {
    switch(simbolo) {
        case '-':   return 0;
        case '*':   return 1;
    }
}

const converte = (numero) => {
    let potencia = 1, resposta = 0;
    
    for(let i = numero.length - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= 2;
    }
    
    return resposta;
};

let soma = 0;
while (lines.length) {
    let linha = lines.shift().trim();

    if (linha === 'caw caw') {
        console.log(soma);
        soma = 0;
    } else {
        soma += converte(linha);
    }
}