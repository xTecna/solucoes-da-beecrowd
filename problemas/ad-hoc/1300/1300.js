var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let A = parseInt(lines.shift().trim());

    console.log(A % 6 ? 'N' : 'Y');
}
