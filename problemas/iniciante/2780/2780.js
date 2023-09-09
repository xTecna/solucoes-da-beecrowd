var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let D = parseInt(lines.shift());

if (D <= 800) {
    console.log(1);
}
else if (D <= 1400) {
    console.log(2);
}
else {
    console.log(3);
}