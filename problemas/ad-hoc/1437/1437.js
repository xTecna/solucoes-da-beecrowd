var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const direcoes = ["N", "L", "S", "O"];

while (lines.length) {
  let N = parseInt(lines.shift());

  if(!N)  break;

  let comandos = lines.shift().trim().split("");

  let direcao = comandos.reduce((acc, cur) => {
    acc += cur === "D" ? 1 : -1;
    return (acc + 4) % 4;
  }, 0);

  console.log(direcoes[direcao]);
}
