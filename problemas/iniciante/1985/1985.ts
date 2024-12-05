process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let precos = [1.5, 2.5, 3.5, 4.5, 5.5];

  let N = parseInt(lines.shift()!);
  let total = 0.0;
  for (let i = 0; i < N; ++i) {
    let [codigo, qtd] = lines.shift()!.trim().split(' ').map((x) => parseInt(x));

    total += qtd * precos[codigo - 1001];
  }

  console.log(total.toFixed(2));
});