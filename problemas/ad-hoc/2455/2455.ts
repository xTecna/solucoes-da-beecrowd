process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let [P1, C1, P2, C2] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  let diferenca = P2 * C2 - P1 * C1;

  if (diferenca < 0) {
    console.log(-1);
  } else if (diferenca > 0) {
    console.log(1);
  } else {
    console.log(0);
  }
});