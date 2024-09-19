(def T (read-line))

(def M (atom (vec (replicate 12 (vec (repeat 12 0.0))))))

(doseq [i (range 0 12)]
  (doseq [j (range 0 12)]
    (reset! M (assoc-in @M [i j] (read)))))

(def soma (atom 0.0))
(def quantidade (atom 0))

(doseq [i (range 7 12)]
  (doseq [j (range (- 12 i) i)]
    (reset! soma (+ @soma (get-in @M [i j])))
    (reset! quantidade (+ @quantidade 1))))

(printf "%.1f\n" (case T "S" @soma "M" (/ @soma @quantidade)))
