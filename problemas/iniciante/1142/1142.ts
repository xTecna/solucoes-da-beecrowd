process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let N = parseInt(lines.shift()!.trim());
  for (let i = 1; i < 4 * N; i += 4) {
    console.log(`${i} ${i + 1} ${i + 2} PUM`);
  }
});