process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let X = parseInt(lines.shift());
  let Y = parseInt(lines.shift());

  if (X > Y) {
      [X, Y] = [Y, X];
  }

  let soma = 0;
  for (let i = X; i <= Y; ++i) {
      if (i % 13 === 0) {
          continue;
      }
      soma += i;
  }

  console.log(soma);
});