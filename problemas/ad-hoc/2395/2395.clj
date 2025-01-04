(require '[clojure.string :as str])

(let [[A B C] (map read-string (str/split (read-line) #" "))
      [X Y Z] (map read-string (str/split (read-line) #" "))]
  (printf "%d\n" (* (int (Math/floor (/ X A))) (int (Math/floor (/ Y B))) (int (Math/floor (/ Z C))))))
