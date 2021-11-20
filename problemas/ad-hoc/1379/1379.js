var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(2 * A - B);
}
