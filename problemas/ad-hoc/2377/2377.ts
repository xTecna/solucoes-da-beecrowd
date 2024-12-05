process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const [l, d] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
  const [k, p] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  console.log((l * k) + p * Math.floor(l / d));
});