var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());
let [LA, LB] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let [SA, SB] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if(LA <= N && N <= LB && SA <= N && N <= SB){
    console.log("possivel");
}else{
    console.log("impossivel");
}
