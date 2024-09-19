process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let somaPA = (a0: number, n: number): number => {
    a0 += 1 - (Math.abs(a0) % 2);
    let an = a0 + (n - 1) * 2;

    return Math.floor(((a0 + an) * n) / 2);
  };

  let N = parseInt(lines.shift()!.trim());
  for (let i = 0; i < N; ++i) {
    let [X, Y] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

    console.log(somaPA(X, Y));
  }
});