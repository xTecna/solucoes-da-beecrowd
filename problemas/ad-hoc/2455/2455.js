var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [P1, C1, P2, C2] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let diferenca = P2 * C2 - P1 * C1;

if(diferenca < 0){
    console.log(-1);
}else if(diferenca > 0){
    console.log(1);
}else{
    console.log(0);
}
