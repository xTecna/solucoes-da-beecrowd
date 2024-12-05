process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const somaPA = (a1, an, n) => Math.floor(((an + a1) * n) / 2);

  const lines = input.trim().split('\n');

  const t = parseInt(lines.shift()!.trim());
  for (let i = 0; i < t; ++i) {
    const n = parseInt(lines.shift()!.trim());
    console.log(somaPA(1, n, n) + 1);
  }
});