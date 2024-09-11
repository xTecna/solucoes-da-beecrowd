process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  while (lines.length) {
      const [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

      if (X === Y) {
          break;
      }

      if (X < Y) {
          console.log("Crescente");
      } else {
          console.log("Decrescente");
      }
  }
});