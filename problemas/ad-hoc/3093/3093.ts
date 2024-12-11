process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  const lines = input.trim().split('\n');

  const checaCarta = (baralho, carta) => baralho.indexOf(carta) != -1;
  const checaCartas = (baralho) => {
    for (let carta of 'QJKA') {
      if (!checaCarta(baralho, carta)) {
        return false;
      }
    }
    return true;
  };

  const n = parseInt(lines.shift()!.trim());
  for (let i = 0; i < n; ++i) {
    const baralho = lines.shift()!.trim();
    console.log(checaCartas(baralho) ? 'Aaah muleke' : 'Ooo raca viu');
  }
});