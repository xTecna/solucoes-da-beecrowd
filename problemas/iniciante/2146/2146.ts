process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  while (lines.length) {
    let N = parseInt(lines.shift()!);
    console.log(N - 1);
  }
});