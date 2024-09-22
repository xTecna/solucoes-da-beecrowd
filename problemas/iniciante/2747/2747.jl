using Printf

linha = "---------------------------------------\n"
@printf "%s" linha
for i in 1:5
  @printf "|                                     |\n"
end
@printf "%s" linha