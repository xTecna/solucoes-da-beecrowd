(def n (read-string (read-line)))
(doseq [i (range 0 n)]
  (def m (+ 1 (* 4 i)))
  (printf "%d %d %d PUM\n" m (+ m 1) (+ m 2)))
