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

  let menor_preco = 1000.0;
  for (let i = 0; i < n; ++i) {
    const [p, g] = lines.shift()!.trim().split(' ').map(x => parseFloat(x));
    menor_preco = Math.min(menor_preco, p / g);
  }

  console.log((1000 * menor_preco).toFixed(2));
});