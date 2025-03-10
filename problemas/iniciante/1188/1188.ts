process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  let O = lines.shift().trim();

  let soma = 0.0;
  let contador = 0;
  for (let i = 0; i < 12; ++i) {
    for (let j = 0; j < 12; ++j) {
      let numero = parseFloat(lines.shift());

      if ((i > 6) && (11 - i < j && j < i)) {
        soma += numero;
        ++contador;
      }
    }
  }

  console.log(`${(O === 'S' ? soma : soma / contador).toFixed(1)}`);
});