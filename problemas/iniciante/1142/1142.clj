(def n (read-string (read-line)))
(doseq [i (range 1 (* 4 n) 4)]
  (printf "%d %d %d PUM\n" i (+ i 1) (+ i 2)))
