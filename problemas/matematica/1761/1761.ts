process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const pi = 3.141592654;

  const lines = input.trim().split('\n');

  while (lines.length > 0) {
    const [a, b, c] = lines.shift()!.trim().split(' ').map(x => parseFloat(x));

    const angulo = a * pi / 180.0;
    const resposta = 5 * (Math.tan(angulo) * b + c);

    console.log(resposta.toFixed(2));
  }
});