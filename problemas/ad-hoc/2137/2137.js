var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let N = parseInt(lines.shift());

    let livros = [];
    for(let i = 0; i < N; ++i){
        livros.push(lines.shift().trim());
    }

    livros.sort();

    for(let i = 0; i < N; ++i){
        console.log(livros[i]);
    }
}
