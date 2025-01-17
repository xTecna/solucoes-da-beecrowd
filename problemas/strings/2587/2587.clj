(require '[clojure.string :as str])

(let [n (read-string (read-line))]
  (doseq [_ (range n)]
    (let [palavra1 (read-line)
          palavra2 (read-line)
          incompleta (read-line)
          pos1 (str/index-of incompleta "_")
          pos2 (str/index-of incompleta "_" (+ pos1 1))
          letra11 (nth palavra1 pos1)
          letra12 (nth palavra1 pos2)
          letra21 (nth palavra2 pos1)
          letra22 (nth palavra2 pos2)]
      (if (or (= letra11 letra22) (= letra12 letra21))
        (printf "Y\n")
        (printf "N\n")))))