(defn imprime [i n]
  (if (< i 1000) (do
                   (printf "N[%d] = %d\n" i (mod i n))
                   (imprime (inc i) n)) ()))

(def n (read-string (read-line)))
(imprime 0 n)