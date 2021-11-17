const countingSort = (V, limite) => {
    let aux = Array(limite);
    aux.fill(0);
    let k = 0;

    for (let i = 0; i < V.length; ++i) {
        aux[V[i]] += 1;
    }

    for (let i = 0; i < limite; ++i) {
        for (let j = 0; j < aux[i]; ++j) {
            V[k++] = i;
        }
    }
};