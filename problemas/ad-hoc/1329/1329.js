var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let N = parseInt(lines.shift());

  let joao = lines.shift().trim().split(" ").map((x) => parseInt(x)).reduce((acc, cur) => acc + cur, 0);

  let maria = N - joao;

  console.log(`Mary won ${maria} times and John won ${joao} times`);
}
