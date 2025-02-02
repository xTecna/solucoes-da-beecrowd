(let [n (read-string (read-line))
      m (read-string (read-line))]
  (def figurinhas (hash-set))
  (doseq [_ (range 0 m)]
    (let [x (read-string (read-line))]
      (def figurinhas (conj figurinhas x))))
  (printf "%d\n" (- n (count figurinhas))))