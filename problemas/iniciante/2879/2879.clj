(let [n (read-string (read-line))
      vitorias (atom 0)]
  (doseq [_ (range 0 n)]
    (let [x (read-string (read-line))]
      (if (not= x 1) (swap! vitorias inc) ())))
  (printf "%d\n" @vitorias))