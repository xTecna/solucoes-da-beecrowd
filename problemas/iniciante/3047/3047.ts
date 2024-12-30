process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  let m = parseInt(lines.shift()!);
  let a = parseInt(lines.shift()!);
  let b = parseInt(lines.shift()!);

  let c = m - a - b;

  console.log(Math.max(a, Math.max(b, c)));
});