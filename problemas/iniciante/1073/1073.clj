(def n (read-string (read-line)))

(doseq [i (range 2 (+ n 1) 2)]
  (printf "%d^2 = %d\n" i (* i i)))