process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  var lines = input.split('\n');

  while (lines.length) {
      let senha = parseInt(lines.shift());

      if (senha == 2002) {
          console.log("Acesso Permitido");
          break;
      }

      console.log("Senha Invalida");
  }
});