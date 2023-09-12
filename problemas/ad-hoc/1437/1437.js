var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
  let N = parseInt(lines.shift());

  if(!N)  break;

  let comandos = lines.shift().trim().split('');

  let direcao = comandos.reduce((acc, cur) => {
    if(cur === 'D'){
      return (acc + 1) % 4;
    }else{
      return ((acc - 1) + 4) % 4;
    }
  }, 0);

  switch(direcao){
    case 0: console.log('N');
            break;
    case 1: console.log('L');
            break;
    case 2: console.log('S');
            break;
    case 3: console.log('O');
            break;
  }
}
