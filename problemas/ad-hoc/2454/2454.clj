(require '[clojure.string :as str])

(def entrada (map read-string (str/split (read-line) #" ")))
(def p (nth entrada 0))
(def r (nth entrada 1))

(if (== p 1) (if (== r 1) (printf "A\n") (printf "B\n")) (printf "C\n"))