var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const valor = (simbolo) => {
    if (simbolo.match(/[a-z]/i)){
        return simbolo.charCodeAt(0) - 'a'.charCodeAt(0) + 10;
    } else {
        return simbolo.charCodeAt(0) - '0'.charCodeAt(0);
    }
}

const simbolo = (valor) => {
    if (valor > 9){
        return String.fromCharCode('a'.charCodeAt(0) + valor - 10);
    } else {
        return String.fromCharCode('0'.charCodeAt(0) + valor);
    }
}

const converteParaDecimal = (numero, base) => {
    let potencia = 1, resposta = 0;

    for(let i = numero.length - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= base;
    }

    return resposta;
}

const converteDeDecimal = (decimal, base) => {
    let resposta = "";

    while(decimal > 0){
        resposta = simbolo(decimal % base) + resposta;
        decimal = parseInt(Math.floor(decimal / base));
    }

    return resposta;
}

let N = parseInt(lines.shift());
for(let k = 1; k <= N; ++k){
    let [numero, base] = lines.shift().trim().split(' ');

    console.log(`Case ${k}:`);
    if(base === 'bin'){
        let dec = converteParaDecimal(numero, 2);
        console.log(`${dec} dec`);
        console.log(`${converteDeDecimal(dec, 16)} hex`);
    }else if(base === 'dec'){
        let dec = converteParaDecimal(numero, 10);
        console.log(`${converteDeDecimal(dec, 16)} hex`);
        console.log(`${converteDeDecimal(dec, 2)} bin`);        
    }else if(base === 'hex'){
        let dec = converteParaDecimal(numero, 16);
        console.log(`${dec} dec`);
        console.log(`${converteDeDecimal(dec, 2)} bin`);
    }
    console.log('');
}