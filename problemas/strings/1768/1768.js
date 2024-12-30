let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

const imprimeTriangulo = (tamanho, deslocamento) => {
    let espacos = Math.floor(tamanho / 2) + deslocamento;
    let asteriscos = 1;

    while (asteriscos <= tamanho) {
        let linha = "";
        for (let i = 0; i < espacos; ++i) {
            linha += " ";
        }
        for (let i = 0; i < asteriscos; ++i) {
            linha += "*";
        }
        console.log(linha);

        espacos -= 1;
        asteriscos += 2;
    }
};

while (lines.length > 0) {
    const n = parseInt(lines.shift());
    imprimeTriangulo(n, 0);
    imprimeTriangulo(3, Math.floor(n / 2) - 1);
    console.log("");
}