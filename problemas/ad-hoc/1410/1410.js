var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => a - b;

lines.pop();

while(lines.length){
    let [A, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let atacantes = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let defensores = lines.shift().trim().split(' ').map((x) => parseInt(x));

    atacantes.sort(comp);
    defensores.sort(comp);

    console.log(atacantes[0] < defensores[1] ? 'Y' : 'N');
}
