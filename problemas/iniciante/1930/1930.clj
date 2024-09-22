(require '[clojure.string :as str])

(def entrada (map read-string (str/split (read-line) #" ")))

(let [soma (atom 0)]
  (doseq [i (range 0 4)]
    (reset! soma (+ @soma (nth entrada i))))
  (printf "%d\n" (- @soma 3)))