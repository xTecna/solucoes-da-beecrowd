(require '[clojure.string :as str])

(defn processa [n]
  (doseq [_ (range 0 n)]
    (let [cores (map read-string (str/split (read-line) #" "))
          opcao (atom 0)
          corretos (atom 0)]
      (doseq [i (range 0 5)]
        (if (<= (nth cores i) 127)
          (do
            (reset! opcao i)
            (swap! corretos inc)) ()))
      (if (== @corretos 1) (printf "%c\n" (char (+ (int \A) @opcao))) (printf "*\n")))))

(defn leitura []
  (loop []
    (let [n (read-string (read-line))]
      (if (zero? n)
        ()
        (do
          (processa n)
          (recur))))))

(leitura)
