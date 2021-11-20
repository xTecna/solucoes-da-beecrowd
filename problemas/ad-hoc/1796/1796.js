var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let Q = lines.shift();
let votos = lines.shift().trim().split(' ').map((x) => parseInt(x));

let satisfatorio = Q - votos.reduce((acc, cur) => acc + cur, 0);

if(satisfatorio > Q/2){
    console.log('Y');
}else{
    console.log('N');
}
