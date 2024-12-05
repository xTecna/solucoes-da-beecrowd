(require '[clojure.string :as str])

(let [entrada (map read-string (str/split (read-line) #" "))]
  (doseq [i (range 0 4)]
    (if (= (nth entrada i) 1)
      (printf "%d\n" (+ i 1))
      ())))