process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  let F = Array(101);
  F.fill(0);
  F[1] = 1;

  const Feynman = (n: number) => {
    if (F[n] === 0) F[n] = Feynman(n - 1) + n * n;
    return F[n];
  };

  lines.pop();

  while (lines.length) {
    let N = parseInt(lines.shift()!);

    console.log(Feynman(N));
  }
});