var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
  let linha = lines.shift();

  let digito1 = parseInt(linha[0]);
  let digito2 = parseInt(linha[2]);

  if (digito1 === digito2)
    console.log(digito1 * digito2);
  else if (/[A-Z]/.test(linha[1]))
    console.log(digito2 - digito1);
  else
    console.log(digito1 + digito2);
}
