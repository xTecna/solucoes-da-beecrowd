var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"];

let N = lines.shift();

for(let i = 0; i < N; ++i){
  let K = lines.shift();

  for (let j = 0; j < K; ++j) {
    let feedback = lines.shift();

    console.log(nomes[feedback - 1]);
  }
}
