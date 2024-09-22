process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let T = parseInt(lines.shift()!.trim());
  let chas = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  let corretos = chas.reduce((acc, cur) => (cur === T) ? acc + 1 : acc, 0);

  console.log(corretos);
});