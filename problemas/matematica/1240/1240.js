var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for(let i = 0; i < N; ++i){
    let [A, B] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let encaixa = true;
    while(A > 0 && B > 0){
        if(A % 10 !== B % 10){
            encaixa = false;
            break;
        }

        A = Math.floor(A / 10);
        B = Math.floor(B / 10);
    }

    if(B > 0)   encaixa = false;

    if(encaixa){
        console.log("encaixa");
    }else{
        console.log("nao encaixa");
    }
}