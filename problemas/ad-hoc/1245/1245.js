var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
  let N = parseInt(lines.shift());

  let sapatos = Array(61);
  for (let i = 0; i < 61; ++i) {
    sapatos[i] = [0, 0];
  }

  for (let i = 0; i < N; ++i) {
    let [M, L] = lines.shift().trim().split(" ");
    M = parseInt(M);

    if (L === "D")  sapatos[M][0] += 1;
    else            sapatos[M][1] += 1;
  }

  let pares = sapatos.reduce((acc, cur) => (acc += Math.min(cur[0], cur[1])), 0);

  console.log(pares);
}
