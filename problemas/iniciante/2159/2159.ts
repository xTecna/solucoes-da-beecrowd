process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  const limiteInferior = (n: number) => n / Math.log(n);
  const limiteSuperior = (n: number) => 1.25506 * n / Math.log(n);

  let n = parseInt(lines.shift()!);
  console.log(`${limiteInferior(n).toFixed(1)} ${limiteSuperior(n).toFixed(1)}`);
});