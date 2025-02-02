(require '[clojure.string :as str])

(let [[n, x, y] (map read-string (str/split (read-line) #" "))]
  (printf "%.2f\n" (/ (float n) (+ x y))))