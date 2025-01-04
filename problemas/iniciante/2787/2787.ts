process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let L = parseInt(lines.shift()!);
  let C = parseInt(lines.shift()!);

  console.log(1 - ((L % 2) ^ (C % 2)));
});