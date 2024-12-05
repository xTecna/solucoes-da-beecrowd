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

  let resposta = 0;
  for (let i = 0; i < n; ++i) {
    const [l, c] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

    if (l > c) {
      resposta += c;
    }
  }

  console.log(resposta);
});