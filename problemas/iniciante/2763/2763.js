var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let CPF = lines.shift().trim().split(/[\\.-]/);
for (let trecho of CPF) {
    console.log(trecho);
}