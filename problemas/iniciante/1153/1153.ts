process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let F = [];

  let Fatorial = (n) => {
      if (F[n] === -1) {
          F[n] = Fatorial(n - 1) * n;
      }
      return F[n];
  };

  F[0] = 1;
  for (let i = 1; i < 14; ++i) {
      F[i] = -1;
  }

  let N = parseInt(lines.shift().trim());

  console.log(Fatorial(N));
});