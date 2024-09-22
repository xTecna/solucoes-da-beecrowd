(require '[clojure.string :as str])

(defn leitura []
  (loop []
    (let [[m n] (map read-string (str/split (read-line) #" "))]
      (if (and (zero? m) (zero? n))
        ()
        (do
          (let [soma (str/replace (str (+ m n)) "0" "")]
            (printf "%s\n" soma))
          (recur))))))

(leitura)