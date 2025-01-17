(require '[clojure.string :as str])

(let [[cv ce cs fv fe fs] (map read-string (str/split (read-line) #" "))
      cp (+ (* 10000 (+ (* 3 cv) ce)) cs)
      fp (+ (* 10000 (+ (* 3 fv) fe)) fs)]
  (if (> cp fp) (printf "C\n") (if (> fp cp) (printf "F\n") (printf "=\n"))))