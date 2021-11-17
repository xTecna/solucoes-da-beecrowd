const selectionSort = (V) => {
    for (let i = 0; i < V.length - 1; ++i) {
        let k = i;

        for (let j = i + 1; j < V.length; ++j) {
            k = comp(V[j], V[k]) < 0 ? j : k;
        }

        [V[i], V[k]] = [V[k], V[i]];
    }
};