var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
  let N = parseInt(lines.shift());

  if(!N)  break;

  for (let i = 0; i < N; ++i) {
    corretos = lines.shift().trim().split(" ").map((x, i) => [parseInt(x), i]).filter((x) => x[0] <= 127);

    if (corretos.length === 1)  console.log(String.fromCharCode(65 + corretos[0][1]));
    else                        console.log("*");
  }
}
