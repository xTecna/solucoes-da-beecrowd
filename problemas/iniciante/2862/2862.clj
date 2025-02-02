(let [c (read-string (read-line))]
  (doseq [_ (range 0 c)]
    (let [n (read-string (read-line))]
      (if (<= n 8000)
        (printf "Inseto!\n")
        (printf "Mais de 8000!\n")))))