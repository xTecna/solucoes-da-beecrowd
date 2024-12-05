(require '[clojure.string :as str])

(let [[h, p] (map read-string (str/split (read-line) #" "))]
  (printf "%.2f\n" (/ (float h) p)))