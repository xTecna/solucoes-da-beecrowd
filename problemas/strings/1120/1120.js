var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let [D, N] = lines.shift().trim().split(' ');

    if(D === '0' && N === '0')  break;

    N = N.split('').filter((x) => x != D).join('');

    let re = /^(0+)/i;
    let resultado = N.match(re);
    if(resultado)   N = N.replace(resultado[0], '');

    if(N.length === 0)   console.log('0');
    else                console.log(N);
}
