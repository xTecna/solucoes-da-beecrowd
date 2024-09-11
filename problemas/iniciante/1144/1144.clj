(defn leitura [i n]
  (if (<= i n) (do (printf "%d %d %d\n" i (* i i) (* i i i)) (printf "%d %d %d\n" i (+ (* i i)            

(def n (read-string (read-line)))
