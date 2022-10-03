const imprimeLinha = () => {
    let linha = '';
    for (let i = 0; i < 39; ++i) {
        linha += '-';
    }
    console.log(linha);
};

const imprimeMeio = () => {
    let linha = '|';
    for (let i = 0; i < 37; ++i) {
        linha += ' ';
    }
    linha += '|';
    console.log(linha);
};

imprimeLinha();
for (let i = 0; i < 5; ++i) {
    imprimeMeio();
}
imprimeLinha();