(require '[clojure.string :as str])

(let [[a, b] (map read-string (str/split (read-line) #" "))]
  (printf "%d\n" (max a b)))