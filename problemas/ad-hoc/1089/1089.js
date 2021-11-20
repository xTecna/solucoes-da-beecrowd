var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let N = parseInt(lines.shift());

  let amostras = lines.shift().trim().split(" ").map((x) => parseInt(x));

  let picos = amostras.filter((atual, i) => {
    let anterior = amostras[(i - 1 + N) % N];
    let proximo = amostras[(i + 1) % N];

    return (atual < anterior && atual < proximo) || (atual > anterior && atual > proximo);
  });

  console.log(picos.length);
}
