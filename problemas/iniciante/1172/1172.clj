(doseq [i (range 0 10)]
  (def numero (read-string (read-line)))
  (if (> numero 0) (printf "X[%d] = %d\n" i numero) (printf "X[%d] = 1\n" i)))