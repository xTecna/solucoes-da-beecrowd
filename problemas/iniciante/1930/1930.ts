process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let T = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
  console.log(T.reduce((acc, cur) => acc + cur, 0) - 3);
});