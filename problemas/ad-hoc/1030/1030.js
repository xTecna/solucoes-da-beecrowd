var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const sobrevivente = (n, k) => {
    if(n == 1)  return 0;
    return (sobrevivente(n - 1, k) + k) % n;
};

let NC = parseInt(lines.shift());

for(let i = 1; i <= NC; ++i){
    let [n, k] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`Case ${i}: ${sobrevivente(n, k) + 1}`);
}
