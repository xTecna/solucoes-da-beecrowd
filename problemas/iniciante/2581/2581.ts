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
    let N = parseInt(lines.shift()!);

    for (let i = 0; i < N; ++i) {
      let frase = lines.shift();
      console.log('I am Toorg!');
    }
  }
});