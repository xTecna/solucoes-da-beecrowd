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
      let linha = [];
      for (let j = 0; j < 3; ++j) {
          linha.push((4 * i + 1 + j).toString());
      }
      linha.push('PUM');
      console.log(linha.join(' '));
  }
});