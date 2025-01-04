process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const [a, b, c] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
  const [x, y, z] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  console.log(Math.floor(x / a) * Math.floor(y / b) * Math.floor(z / c));
});