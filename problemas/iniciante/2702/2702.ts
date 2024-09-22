process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let [Ca, Ba, Pa] = lines.shift()!.trim().split(' ').map(x => parseInt(x));
  let [Cr, Br, Pr] = lines.shift()!.trim().split(' ').map(x => parseInt(x));

  let resposta = 0;
  resposta += (Cr > Ca) ? (Cr - Ca) : 0;
  resposta += (Br > Ba) ? (Br - Ba) : 0;
  resposta += (Pr > Pa) ? (Pr - Pa) : 0;

  console.log(resposta);
});