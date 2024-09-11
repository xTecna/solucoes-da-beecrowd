process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let somaPA = (a0: number, n: number) => {
    let an = a0 + n - 1;

    return Math.floor((a0 + an) * n / 2);
  };

  let entrada = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

  let A = entrada.shift();
  let N = 0;
  for (let i = 0; i < entrada.length; ++i) {
    if (entrada[i] > 0) {
      N = entrada[i];
      break;
    }
  }

  console.log(somaPA(A!, N));
});