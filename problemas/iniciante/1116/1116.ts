process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let N = parseInt(lines.shift());
  for (let i = 0; i < N; ++i) {
      let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

      if (Y === 0) {
          console.log("divisao impossivel");
      } else {
          console.log((X / Y).toFixed(1));
      }
  }
});