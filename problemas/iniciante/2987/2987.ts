process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let L = lines.shift()!;
  console.log(L.charCodeAt(0) - 'A'.charCodeAt(0) + 1);
});