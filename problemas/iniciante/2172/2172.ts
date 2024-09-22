process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  lines.pop();

  while (lines.length) {
    let [X, M] = lines.shift()!.trim().split(' ').map(x => parseInt(x));
    console.log(X * M);
  }
});