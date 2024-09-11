process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let [soma, contador] = [0, 0];
  while (lines.length) {
    let idade = parseInt(lines.shift()!.trim());

    if (idade < 0) {
      break;
    }

    soma += idade;
    ++contador;
  }

  console.log(`${(soma / contador).toFixed(2)}`);
});