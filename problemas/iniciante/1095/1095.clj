(doseq [i (range 0 13)]
  (printf "I=%d J=%d\n" (+ 1 (* 3 i)) (- 60 (* 5 i))))
