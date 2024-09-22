process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let [N, M] = lines.shift()!.trim().split(' ').map(x => parseInt(x));
  for (let i = 0; i < M; ++i) {
    let acao = lines.shift()!.trim();

    if (acao === "fechou") {
      ++N;
    } else {
      --N;
    }
  }

  console.log(N);
});