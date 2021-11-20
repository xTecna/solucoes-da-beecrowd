var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
  let N = parseInt(lines.shift());

  if(!N)  break;

  let [jogador1, jogador2] = [0, 0];

  for (let i = 0; i < N; ++i) {
    let [A, B] = lines.shift().trim().split(" ").map((x) => parseInt(x));

    if (A > B)      jogador1 += 1;
    else if (B > A) jogador2 += 1;
  }

  console.log(`${jogador1} ${jogador2}`);
}
