process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  let A = parseInt(lines.shift()!);
  let M = parseInt(lines.shift()!);

  console.log(2 * M - A);
});