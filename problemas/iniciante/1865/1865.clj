(require '[clojure.string :as str])

(def n (read-string (read-line)))
(doseq [_ (range 0 n)]
  (let [[nome, _] (str/split (read-line) #" ")]
    (if (= nome "Thor") (printf "Y\n") (printf "N\n"))))