process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const [n, x] = lines.shift()!.trim().split(' ').map(x => parseInt(x));
  const pontos = lines.shift()!.trim().split(' ').map(x => parseInt(x));

  let resposta = 1;
  let soma = 1;
  for (let i = 1; i < n; ++i) {
    if (pontos[i] - pontos[i - 1] <= x) {
      soma += 1;
    } else {
      soma = 1;
    }
    resposta = Math.max(resposta, soma);
  }

  console.log(resposta);
});