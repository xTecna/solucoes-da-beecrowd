var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [N, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let jantares = Array(N);
    jantares.fill(0);

    for(let i = 0; i < D; ++i){
        let participantes = lines.shift().trim().split(' ').map((x) => parseInt(x));
        
        for(let j = 0; j < N; ++j){
            jantares[j] += participantes[j];
        }
    }

    let resposta = jantares.some((x) => x === D);

    console.log(resposta ? 'yes' : 'no');
}
