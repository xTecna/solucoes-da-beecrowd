var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let resposta = Array(5001);
resposta.fill(0);

const repetido = (n) => {
    let digitos = n.toString().split('');
    let digitosDiferentes = new Set(digitos);

    return digitos.length !== digitosDiferentes.size;
};

const preCalcula = () => {
    for(let i = 1; i < 5001; ++i){
        resposta[i] = resposta[i - 1];
        if(!repetido(i)) resposta[i] += 1;
    }
};

const digitosDiferentes = (a, b) => {
    return resposta[b] - resposta[a - 1];
};

preCalcula();

while(lines.length){
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(digitosDiferentes(N, M));
}
