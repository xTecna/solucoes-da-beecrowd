process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let X = parseInt(lines.shift()!);
  let Z = 0;
  while (lines.length) {
    Z = parseInt(lines.shift()!);

    if (Z > X) {
      break;
    }
  }

  let resposta = 1, soma = X;
  while (soma <= Z) {
    soma += X + resposta;
    ++resposta;
  }

  console.log(resposta);
});