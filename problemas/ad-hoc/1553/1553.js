var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [N, K] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let perguntas = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let resposta = 0;
    let frequencias = Array(N + 1);
    frequencias.fill(0);

    perguntas.map((x) => {
        frequencias[x]++;
        if(frequencias[x] === K) ++resposta;
    });

    console.log(resposta);
}
