process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  let [nota1, nota2] = [-1.0, -1.0];
  while (nota2 === -1.0) {
      let nota = parseFloat(lines.shift());

      if (nota >= 0.0 && nota <= 10.0) {
          if (nota1 === -1.0) {
              nota1 = nota;
          } else {
              nota2 = nota;
          }
      } else {
          console.log('nota invalida');
      }
  }

  console.log(`media = ${((nota1 + nota2) / 2).toFixed(2)}`);
});