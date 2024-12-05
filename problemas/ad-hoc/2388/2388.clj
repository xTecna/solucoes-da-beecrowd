(require '[clojure.string :as str])

(let [n (read-string (read-line))
      resposta (atom 0)]
  (doseq [_ (range 0 n)]
    (let [[v t] (map read-string (str/split (read-line) #" "))]
      (reset! resposta (+ @resposta (* v t)))))
  (printf "%d\n" @resposta))