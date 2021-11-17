const bubbleSort = (V) => {
    for (let i = 0; i < V.length - 1; ++i) {
        for (let j = 1; j < V.length - i; ++j) {
            let k = j - 1;

            if (comp(V[j], V[k]) < 0) {
                [V[j], V[k]] = [V[k], V[j]];
            }
        }
    }
};