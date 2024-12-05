(require '[clojure.string :as str])

(def precos [1.50, 2.50, 3.50, 4.50, 5.50])

(let [soma (atom 0)
      p (read-string (read-line))]
  (doseq [_ (range 0 p)]
    (let [[codigo, q] (map read-string (str/split (read-line) #" "))]
      (reset! soma (+ @soma (* (nth precos (- codigo 1001)) q)))))
  (printf "%.2f\n" @soma))