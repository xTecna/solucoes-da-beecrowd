var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift());
for(let i = 0; i < C; ++i){
    let N = parseInt(lines.shift());

    if(N > 8000){
        console.log('Mais de 8000!');
    }else{
        console.log('Inseto!');
    }
}