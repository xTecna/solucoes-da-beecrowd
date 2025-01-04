process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  let n = parseInt(lines.shift()!.trim());

  let resposta = 7;
  let valores = [100, 30, 10];
  let precos = [5, 2, 1];
  for (let i = 0; i < 3; ++i) {
    if (n > valores[i]) {
      resposta += precos[i] * (n - valores[i]);
      n = valores[i];
    }
  }

  console.log(resposta);
});