(require '[clojure.string :as str])

(defn r [a b] (+ (* 9 a a) (* b b)))
(defn b [a b] (+ (* 2 (* a a)) (* 25 b b)))
(defn c [a b] (+ (* -100 a) (* b b b)))

(let [n (read-string (read-line))]
  (doseq [_ (range 0 n)]
    (let [linha (read-line)]
      (when linha
        (let [entrada (str/split linha #" ")
              x (read-string (nth entrada 0))
              y (read-string (nth entrada 1))
              rafael (r x y)
              beto (b x y)
              carlos (c x y)]
          (if (and (> rafael beto) (> rafael carlos))
            (println "Rafael ganhou")
            (if (and (> beto rafael) (> beto carlos))
              (println "Beto ganhou")
              (println "Carlos ganhou"))))))))
