process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let C = parseInt(lines.shift()!);
  for (let i = 0; i < C; ++i) {
    let N = parseInt(lines.shift()!);

    if (N > 8000) {
      console.log('Mais de 8000!');
    } else {
      console.log('Inseto!');
    }
  }
});