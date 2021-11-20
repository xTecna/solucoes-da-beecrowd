var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if(!N && !M)    break;

    let bilhetes = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let resposta = 0;
    let contador = Array(N + 1);
    contador.fill(0);

    bilhetes.forEach((bilhete) => {
        contador[bilhete] += 1;
        
        if(contador[bilhete] === 2) resposta += 1;
    });

    console.log(resposta);
}
