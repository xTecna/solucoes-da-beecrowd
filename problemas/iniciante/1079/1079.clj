(require '[clojure.string :as str])

(def n (read-string (read-line)))

(doseq [_ (range 0 n)]
  (do
    (def entrada (map read-string (str/split (read-line) #" ")))
    (def a (nth entrada 0))
    (def b (nth entrada 1))
    (def c (nth entrada 2))
    (printf "%.1f\n" (/ (+ (* 2.0 a) (* 3.0 b) (* 5.0 c)) 10.0))))