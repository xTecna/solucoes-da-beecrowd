(require '[clojure.string :as str])

(def t (read-string (read-line)))
(def entrada (map read-string (str/split (read-line) #" ")))

(let [corretos (atom 0)]
  (doseq [i (range 0 5)]
    (if (= (nth entrada i) t)
      (swap! corretos inc)
      ()))
  (printf "%d\n" @corretos))