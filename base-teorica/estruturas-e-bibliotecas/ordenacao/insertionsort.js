const insertionSort = (V) => {
    for (let i = 1; i < V.length; ++i) {
        let j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]) < 0) {
            [V[k], V[j]] = [V[j], V[k]];
            --j, --k;
        }
    }
};