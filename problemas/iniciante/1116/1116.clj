(require '[clojure.string :as str])

(def n (read-string (read-line)))
(doseq [_ (range 0 n)]
  (def entrada (map read-string (str/split (read-line) #" ")))
  (def x (nth entrada 0))
  (def y (nth entrada 1))
  (if (== y 0) (println "divisao impossivel") (printf "%.1f\n" (/ (float x) y))))