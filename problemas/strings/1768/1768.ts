process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const imprime = (altura_atual, altura_geral) => {
    for (let i = 0; i < altura_atual; ++i) {
      let linha = '';
      for (let k = 0; k < 2 * i + 1; ++k) {
        linha += '*';
      }
      console.log(linha.padStart(altura_geral + i));
    }
  }

  const lines = input.trim().split('\n');

  while (lines.length > 0) {
    const n = parseInt(lines.shift()!.trim());

    const altura = Math.ceil(n / 2);
    imprime(altura, altura);
    imprime(2, altura);
    console.log('');
  }
});