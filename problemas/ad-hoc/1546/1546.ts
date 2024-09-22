process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  const nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"];

  let N = parseInt(lines.shift()!);

  for (let i = 0; i < N; ++i) {
    let K = parseInt(lines.shift()!);

    for (let j = 0; j < K; ++j) {
      let feedback = parseInt(lines.shift()!);

      console.log(nomes[feedback - 1]);
    }
  }
});