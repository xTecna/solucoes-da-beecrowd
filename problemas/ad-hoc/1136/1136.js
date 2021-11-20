var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [N, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let bolas = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let possibilidades = new Set();
    possibilidades.add(0);

    for(let i = 0; i < B; ++i){
        for(let j = i + 1; j < B; ++j){
            possibilidades.add(Math.abs(bolas[i] - bolas[j]));
        }
    }

    console.log(possibilidades.size === N + 1 ? 'Y' : 'N');
}
