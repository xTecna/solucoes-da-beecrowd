(defn leitura [i n]
  (if (<= i n) (do (if (== (mod n i) 0) (printf "%d\n" i) ()) (leitura (inc i) n)) ()))

(def n (read-string (read-line)))
(leitura 1 n)