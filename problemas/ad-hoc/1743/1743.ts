process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let X = lines.shift()!.trim().split(' ').map((x) => parseInt(x));
  let Y = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  let conectores = [];
  for (let i = 0; i < 5; ++i) {
    conectores.push([X[i], Y[i]]);
  }

  console.log(conectores.every((x) => x[0] !== x[1]) ? 'Y' : 'N');
});