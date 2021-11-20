var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
  let [L, R] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if(!L && !R)  break;

  console.log(L + R);
}
