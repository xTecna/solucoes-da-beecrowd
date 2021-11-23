var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const acmToDec = (acm) => {
    let potencia = 1, p = 2;
    return acm.split('').reverse().reduce((acc, cur) => {
        let resposta = acc + parseInt(cur) * potencia;
        potencia *= p++;

        return resposta;
    }, 0);
}

lines.pop();

let p = 0;
while (p < lines.length) {
    let acm = lines[p++].trim();

    console.log(acmToDec(acm));
}
