var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [A, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let blocos = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let resposta = 0;
    for(let i = 1; i < C; ++i){
        if(blocos[i] > blocos[i - 1]){
            resposta += blocos[i] - blocos[i - 1];
        }
    }
    resposta += A - blocos[C - 1];

    console.log(resposta);
}
