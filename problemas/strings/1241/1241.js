var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let [A, B] = lines.shift().trim().split(' ');

    if(B.length > A.length) console.log("nao encaixa");
    else{
        A = A.substring(A.length - B.length);
        if(A === B)         console.log("encaixa");
        else                console.log("nao encaixa");
    }
}
