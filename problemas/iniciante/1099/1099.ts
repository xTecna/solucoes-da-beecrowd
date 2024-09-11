process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let numeroImpares = (X, Y) => (Y - X) / 2 + 1;
  let somaPA = (a0, an) => (a0 + an) * numeroImpares(a0, an) / 2;

  let N = parseInt(lines.shift());
  for (let i = 0; i < N; ++i) {
      let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

      if (X > Y) {
          [X, Y] = [Y, X];
      }

      X += (Math.abs(X) % 2) + 1;
      Y -= (Math.abs(Y) % 2) + 1;

      console.log(`${X > Y ? 0 : somaPA(X, Y)}`);
  }
});