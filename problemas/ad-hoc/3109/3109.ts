process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const n = parseInt(lines.shift()!.trim());

  let mesas: { [id: number]: number } = {};
  for (let i = 1; i <= n; ++i) {
    mesas[i] = i;
  }

  const q = parseInt(lines.shift()!.trim());
  for (let i = 0; i < q; ++i) {
    const comando = lines.shift()!.trim().split(' ').map(x => parseInt(x));
    if (comando[0] == 1) {
      const f1 = comando[1];
      const f2 = comando[2];

      const temp = mesas[f1];
      mesas[f1] = mesas[f2];
      mesas[f2] = temp;
    } else {
      const f = comando[1];

      let mesa = f;
      let resposta = 0;
      while (mesas[mesa] != f) {
        resposta += 1;
        mesa = mesas[mesa];
      }

      console.log(resposta);
    }
  }
});