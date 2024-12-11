process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const variacoes = (letra) => 'aeios'.indexOf(letra) != -1 ? 3 : 2;

  const lines = input.trim().split('\n');

  const n = parseInt(lines.shift()!.trim());
  for (let k = 0; k < n; ++k) {
    const senha = lines.shift()!.trim().toLowerCase();

    let resposta = 1;
    for (let i = 0; i < senha.length; ++i) {
      resposta *= variacoes(senha[i]);
    }

    console.log(resposta);
  }
});