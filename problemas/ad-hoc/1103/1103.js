var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const converte = (horas, minutos) => {
  return 60 * horas + minutos;
};

lines.pop();

while (lines.length) {
  let [H1, M1, H2, M2] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  if (H2 < H1 || (H2 == H1 && M2 < M1)) H2 += 24;
  let resposta = converte(H2, M2) - converte(H1, M1);

  console.log(resposta);
}
