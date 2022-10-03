const imprimeLinhaHorizontal = () => {
    let linha = '';
    for (let i = 0; i < 39; ++i) {
        linha += '-';
    }
    console.log(linha);
};

const imprimeCabecalho = () => {
    imprimeLinhaHorizontal();
    console.log("|  decimal  |  octal  |  Hexadecimal  |");
    imprimeLinhaHorizontal();
};

const imprimeLinha = (numero) => {
    let linha = '|';

    let formato = numero.toString();
    linha += formato.padStart(7);
    linha += '|'.padStart(5);

    formato = numero.toString(8);
    linha += formato.padStart(5);
    linha += '|'.padStart(5);

    formato = numero.toString(16).toUpperCase();
    linha += formato.padStart(8);
    linha += '|'.padStart(8);

    console.log(linha);
};

imprimeCabecalho();
for (let i = 0; i < 16; ++i) {
    imprimeLinha(i);
}
imprimeLinhaHorizontal();