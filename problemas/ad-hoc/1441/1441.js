var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

lines.pop();

while(lines.length){
    let n = parseInt(lines.shift().trim());

    let resposta = n;
    while(n > 1){
        if(n % 2)   n = 3 * n + 1;
        else        n /= 2;
        resposta = Math.max(resposta, n);
    }

    console.log(resposta);
}
