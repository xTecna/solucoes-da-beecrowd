(defn leitura []
  (let [senha (read-string (read-line))]
    (if (== senha 2002)
      (printf "Acesso Permitido\n")
      (do
        (printf "Senha Invalida\n")
        (leitura)))))

(leitura)
