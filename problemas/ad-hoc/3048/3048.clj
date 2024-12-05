(let [n (read-string (read-line))
      anterior (atom -1)
      resposta (atom 0)]
  (doseq [_ (range 0 n)]
    (let [atual (read-string (read-line))]
      (if (not (== atual @anterior))
        (do
          (reset! anterior atual)
          (swap! resposta inc))
        ())))
  (printf "%d\n" @resposta))