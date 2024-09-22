(require '[clojure.string :as str])

(let [entrada (str/split (read-line) #" ")
      c (read-string (nth entrada 0))
      p (read-string (nth entrada 1))
      f (read-string (nth entrada 2))]
  (if (>= p (* c f)) (printf "S\n") (printf "N\n")))
