(require '[clojure.string :as str])

(defn valor [simbolo]
  (cond
    (<= (int \0) (int simbolo) (int \9))
    (- (int simbolo) (int \0))
    (<= (int \A) (int simbolo) (int \F))
    (+ (- (int simbolo) (int \A)) 10)
    :else (+ (- (int simbolo) (int \a)) 10)))

(defn converteParaDecimal [numero]
  (let [resposta (atom 0)]
    (doseq [digito numero]
      (reset! resposta (+ (* 16 @resposta) (valor digito))))
    @resposta))

(do
  (let [_ (read-string (read-line))
        numeros (str/split (read-line) #" ")]
    (doseq [numero numeros]
      (printf "%c" (char (converteParaDecimal numero)))))
  (printf "\n"))
