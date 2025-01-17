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
  const pedacos = lines.shift()!.trim().split(' ').map(x => parseInt(x));

  console.log(pedacos.reduce((acc, cur) => acc + cur, 0) - n);
});