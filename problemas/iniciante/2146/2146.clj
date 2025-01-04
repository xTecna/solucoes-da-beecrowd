(require '[clojure.java.io :as io])

(let [entrada (vec (line-seq (io/reader *in*)))]
  (doseq [n entrada] (printf "%d\n" (dec (read-string n)))))