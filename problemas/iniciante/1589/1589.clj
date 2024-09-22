(require '[clojure.string :as str])

(def n (read-string (read-line)))

(doseq [_ (range 0 n)]
  (let [[x, y] (map read-string (str/split (read-line) #" "))]
    (printf "%d\n" (+ x y))))