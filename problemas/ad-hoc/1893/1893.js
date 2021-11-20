var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [ontem, hoje] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if(hoje < 3)            console.log("nova");
else if(hoje > 96)      console.log("cheia");
else if(ontem > hoje)   console.log("minguante");
else                    console.log("crescente");
