(require '[clojure.string :as str])

(let [entrada (str/split (read-line) #" ")
      c (read-string (nth entrada 0))
      n (read-string (nth entrada 1))]
  (printf "%d\n" (mod c n)))