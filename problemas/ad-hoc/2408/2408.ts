process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const resultado = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
  resultado.sort((a, b) => b - a);

  console.log(resultado[1]);
});