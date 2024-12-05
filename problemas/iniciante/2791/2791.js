var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = lines.shift().trim().split(' ').map(x => parseInt(x));

for(let i = 0; i < 4; ++i){
    if(C[i] == 1){
        console.log(i + 1);
        break;
    }
}