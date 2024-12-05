(require '[clojure.string :as str])

(let [n (read-string (read-line))
      resposta (atom 0)]
  (doseq [_ (range n)]
    (let [[latas copos] (map read-string (str/split (read-line) #" "))]
      (when (> latas copos)
        (swap! resposta + copos))))
  (printf "%d\n" @resposta))