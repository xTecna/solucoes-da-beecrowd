(doseq [i (range 0 5)]
  (doseq [j (range 7 4 -1)]
    (printf "I=%d J=%d\n" (+ 1 (* 2 i)) (+ j (* 2 i)))))
