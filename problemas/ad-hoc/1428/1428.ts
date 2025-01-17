process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const t = parseInt(lines.shift()!.trim());
  for (let i = 0; i < t; ++i) {
    const [n, m] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
    console.log(Math.ceil((n - 2) / 3) * Math.ceil((m - 2) / 3));
  }
});