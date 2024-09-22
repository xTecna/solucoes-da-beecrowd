(require '[clojure.string :as str])

(defn leitura []
  (loop []
    (let [numeros (map read-string (str/split (read-line) #" "))
          x (nth numeros 0)
          m (nth numeros 1)]
      (if (and (= x 0) (= m 0))
        ()
        (do
          (println (* x m))
          (recur))))))

(leitura)
