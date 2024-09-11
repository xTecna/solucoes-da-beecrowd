(def n (read-string (read-line)))

(doseq [i (range 1 11)]
  (printf "%d x %d = %d\n" i n (* i n)))