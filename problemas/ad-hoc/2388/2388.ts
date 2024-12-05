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

  console.log(lines.reduce((acc, cur) => {
    const [t, v] = cur.trim().split(' ').map(x => parseInt(x));
    return acc + t * v;
  }, 0));
});