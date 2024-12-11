(defn segura [m, i, j] (>= (+ (get-in @m [i j]) (get-in @m [(+ i 1) j]) (get-in @m [i (+ j 1)]) (get-in @m [(+ i 1) (+ j 1)])) 2))

(def n (read-string (read-line)))

(def M (atom (vec (replicate (+ n 1) (vec (repeat (+ n 1) 0))))))

(doseq [i (range 0 (+ n 1))]
  (doseq [j (range 0 (+ n 1))]
    (reset! M (assoc-in @M [i j] (read)))))

(doseq [i (range 0 n)]
  (doseq [j (range 0 n)]
    (if (segura M i j)
      (printf "S")
      (printf "U")))
  (printf "\n"))