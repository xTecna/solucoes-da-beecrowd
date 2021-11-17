const merge = (V, inicio, meio, fim) => {
    let aux = Array(fim - inicio);
    let i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while (i1 < n1 && i2 < n2) {
        if (comp(V[i1], V[i2]) < 0) {
            aux[i++] = V[i1++];
        } else {
            aux[i++] = V[i2++];
        }
    }

    while (i1 < n1) aux[i++] = V[i1++];
    while (i2 < n2) aux[i++] = V[i2++];

    for (let i = inicio; i < fim; ++i) {
        V[i] = aux[i - inicio];
    }
};

const mergeSort = (V, inicio, fim) => {
    if (fim - inicio > 1) {
        let meio = Math.floor((inicio + fim) / 2);

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
};