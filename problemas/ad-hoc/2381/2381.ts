process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.trim().split('\n');

  let [N, K] = lines.shift()!.trim().split(' ').map(x => parseInt(x));

  let alunos = [];
  for (let i = 0; i < N; ++i) {
    let aluno = lines.shift()!.trim();
    alunos.push(aluno);
  }

  alunos.sort();
  console.log(alunos[K - 1]);
});