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
    let [R1, R2] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
    console.log(R1 + R2);
  }
});