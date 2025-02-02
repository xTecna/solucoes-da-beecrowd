(require '[clojure.string :as str])

(let [c (read-string (read-line))]
  (doseq [_ (range c)]
    (let [[b e] (map read-string (str/split (read-line) #" "))
          resposta (atom "")]
      (doseq [i (range b (+ e 1))]
        (reset! resposta (str @resposta i)))
      (printf "%s%s\n" @resposta (str/reverse @resposta)))))