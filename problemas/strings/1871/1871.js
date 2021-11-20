var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [M, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if(!M && !N)    break;

    let soma = (M + N).toString();
    let resposta = soma.split('0').join('');

    console.log(resposta);
}
