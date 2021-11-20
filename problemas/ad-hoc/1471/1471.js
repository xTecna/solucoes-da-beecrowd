var input = require('fs').readFileSync('./input.txt', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [N, R] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let naoSobreviventes = new Set();
    for(let i = 1; i <= N; ++i){
        naoSobreviventes.add(i);
    }

    let mergulhadores = lines.shift().trim().split(' ').map((x) => parseInt(x));
    mergulhadores.map((mergulhador) => naoSobreviventes.delete(mergulhador));

    naoSobreviventes = Array.from(naoSobreviventes);

    if(naoSobreviventes.length === 0)   console.log('*');
    else                                console.log(`${naoSobreviventes.join(' ')} `);
}
