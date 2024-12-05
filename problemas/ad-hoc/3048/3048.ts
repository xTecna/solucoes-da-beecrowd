process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const n = parseInt(lines.shift()!.trim());

  let resposta = 1;
  let acumulado = 1;
  let anterior = parseInt(lines.shift()!.trim());
  for (let i = 1; i < n; ++i) {
    const atual = parseInt(lines.shift()!.trim());
    if (atual != anterior) {
      acumulado += 1;
      anterior = atual;
    }
    resposta = Math.max(resposta, acumulado);
  }

  console.log(resposta);
});