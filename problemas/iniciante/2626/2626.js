var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const ganhou = (jogada1, jogada2) => (jogada1 === "pedra" && jogada2 === "tesoura") || (jogada1 === "tesoura" && jogada2 === "papel") || (jogada1 === "papel" && jogada2 === "pedra");

while (lines.length) {
    let [dodo, leo, pepper] = lines.shift().trim().split(' ');

    if (ganhou(dodo, leo) && ganhou(dodo, pepper)) {
        console.log("Os atributos dos monstros vao ser inteligencia, sabedoria...");
    } else if (ganhou(leo, dodo) && ganhou(leo, pepper)) {
        console.log("Iron Maiden's gonna get you, no matter how far!");
    } else if (ganhou(pepper, dodo) && ganhou(pepper, leo)) {
        console.log("Urano perdeu algo muito precioso...");
    } else {
        console.log("Putz vei, o Leo ta demorando muito pra jogar...");
    }
}