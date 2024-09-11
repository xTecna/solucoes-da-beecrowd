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
      let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

      if (X === 0 || Y === 0) {
          break;
      }

      if (X > 0) {
          if (Y > 0) {
              console.log("primeiro");
          } else {
              console.log("quarto");
          }
      } else {
          if (Y > 0) {
              console.log("segundo");
          } else {
              console.log("terceiro");
          }
      }
  }
});