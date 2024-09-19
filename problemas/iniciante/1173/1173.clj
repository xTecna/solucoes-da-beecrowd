(def x (atom (read-string (read-line))))

(doseq [i (range 0 10)]
  (do
    (printf "N[%d] = %d\n" i @x)
    (reset! x (* @x 2))))
