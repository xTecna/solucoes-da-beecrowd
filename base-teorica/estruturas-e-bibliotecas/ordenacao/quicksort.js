const particao = (V, inicio, fim) => {
    let pivo = V[fim - 1];
    let i = inicio;

    for (let j = inicio; j < fim; ++j) {
        if (comp(V[j], pivo) < 0) {
            [V[j], V[i]] = [V[i], V[j]];
            ++i;
        }
    }

    if (comp(pivo, V[i]) < 0) {
        [V[i], V[fim - 1]] = [V[fim - 1], V[i]];
    }

    return i;
};

const quickSort = (V, inicio, fim) => {
    if (fim > inicio) {
        let posicaoPivo = particao(V, inicio, fim);

        quickSort(V, inicio, posicaoPivo);
        quickSort(V, posicaoPivo + 1, fim);
    }
};