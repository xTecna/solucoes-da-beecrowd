(require '[clojure.string :as str])

(let [[p1 c1 p2 c2] (map read-string (str/split (read-line) #" "))
      diferenca (- (* p2 c2) (* p1 c1))]
  (if (< diferenca 0) (printf "-1\n") (if (== diferenca 0) (printf "0\n") (printf "1\n"))))