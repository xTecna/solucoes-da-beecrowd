(require '[clojure.string :as str])

(let [[l d] (map read-string (str/split (read-line) #" "))
      [k p] (map read-string (str/split (read-line) #" "))]
  (printf "%d\n" (+ (* k l) (* p (int (Math/floor (/ l d)))))))