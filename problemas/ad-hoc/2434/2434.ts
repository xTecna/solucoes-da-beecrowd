process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  let [n, saldo] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  let resposta = saldo;
  for (let i = 0; i < n; ++i) {
    const movimentacao = parseInt(lines.shift()!.trim());
    saldo += movimentacao;

    resposta = Math.min(resposta, saldo);
  }

  console.log(resposta);
});