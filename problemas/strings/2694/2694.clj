(let [n (read-string (read-line))]
  (doseq [_ (range n)]
    (let [linha (read-line)
          parte1 (Integer/parseInt (subs linha 2 4))
          parte2 (Integer/parseInt (subs linha 5 8))
          parte3 (Integer/parseInt (subs linha 11 13))]
      (printf "%d\n" (+ parte1 parte2 parte3)))))