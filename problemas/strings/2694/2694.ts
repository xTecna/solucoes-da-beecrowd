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

  for (let i = 0; i < n; ++i) {
    console.log(lines.shift()!.trim().split(/\D+/).filter(x => x.length > 0).map((x) => parseInt(x)).reduce((acc, cur) => acc + cur, 0));
  }
});