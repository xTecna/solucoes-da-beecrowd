process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let T = parseInt(lines.shift()!);

  for (let i = 0; i < T; ++i) {
    let N = parseInt(lines.shift()!);

    console.log(Math.pow(2, N) - 1);
  }
});