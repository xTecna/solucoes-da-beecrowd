(require '[clojure.string :as str])

(let [entrada (map read-string (str/split (read-line) #" "))
      n (atom (nth entrada 0))
      m (nth entrada 1)]
  (doseq [_ (range 0 m)]
    (let [acao (read-line)]
      (if (= acao "fechou")
        (swap! n inc)
        (swap! n dec))))
  (printf "%d\n" @n))