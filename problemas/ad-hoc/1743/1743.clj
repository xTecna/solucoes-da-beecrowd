(require '[clojure.string :as str])

(def x (map read-string (str/split (read-line) #" ")))
(def y (map read-string (str/split (read-line) #" ")))

(def compativel (atom true))
(doseq [i (range 0 5)]
  (if (== (nth x i) (nth y i)) (reset! compativel false) ()))

(if @compativel (printf "Y\n") (printf "N\n"))