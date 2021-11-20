var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const um = "one";

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let palavra = lines.shift();

    if(palavra.length === 5)    console.log(3);
    else{
        let semelhancas = palavra.trim().split('').map((x, i) => [palavra[i], um[i]]).reduce((acc, cur) => (cur[0] === cur[1]) ? acc + 1 : acc, 0);
        if(semelhancas > 1) console.log(1);
        else                console.log(2);
    }
}
