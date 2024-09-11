(defn leitura [i n]
  (if (<= i n) (do (printf "%d %d %d\n" i (* i i) (* i i i)) (leitura (inc i) n)) ()))

(def n (read-string (read-line)))
(leitura 1 n)