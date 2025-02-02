process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split("\n");

  let N = parseInt(lines.shift()!);
  let figurinhas = new Set();

  let M = parseInt(lines.shift()!);
  for (let i = 0; i < M; ++i) {
    let X = parseInt(lines.shift()!);
    figurinhas.add(X);
  }

  console.log(N - figurinhas.size);
});