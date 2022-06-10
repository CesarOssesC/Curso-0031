pass = ARGV[0]
texto = "a"
i = 1
while texto != pass
  texto = texto.next
  i += 1
end
puts i.to_s + "intentos"
