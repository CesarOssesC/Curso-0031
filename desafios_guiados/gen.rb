def gen(x)
  texto = ""
  letra = "a"
  x.times do
    texto = texto + letra
    letra = letra.next
  end
  return texto
end
puts gen(4)
puts gen(10)