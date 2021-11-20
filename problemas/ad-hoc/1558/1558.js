var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let respostas = new Set();

const preProcessa = () => {
    for(let i = 0; i < 101; ++i){
        respostas.add(i * i);
    }

    for(let i = 1; i < 101; ++i){
        for(let j = i; j < 101; ++j){
            respostas.add(i * i + j * j);
        }
    }
};

preProcessa();

while(lines.length){
    let numero = parseInt(lines.shift().trim());

    console.log(respostas.has(numero) ? "YES" : "NO");
}
