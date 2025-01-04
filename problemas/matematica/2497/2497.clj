(defn processa [teste n]
  (printf "Experiment %d: %d full cycle(s)\n" teste (int (Math/floor (/ n 2)))))

(defn leitura [teste]
  (let [n (read-string (read-line))]
    (when (not= n -1)
      (do
        (processa teste n)
        (leitura (+ teste 1))))))

(leitura 1)