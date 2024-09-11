(require '[clojure.string :as str])

(def entrada1 (str/split (read-line) #" "))
(def x1 (read-string (nth entrada1 0)))
(def y1 (read-string (nth entrada1 1)))

(def entrada2 (str/split (read-line) #" "))
(def x2 (read-string (nth entrada2 0)))
(def y2 (read-string (nth entrada2 1)))

(println (format "%.4f" (Math/sqrt (+ ( * (- x2 x1) (- x2 x1)) (* (- y2 y1) (- y2 y1))))))
