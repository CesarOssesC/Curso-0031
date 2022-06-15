ventas = {
  Enero: 15000,
  Febrero: 22000,
  Marzo: 12000,
  Abril: 17000,
  Mayo: 81000,
  Junio: 13000,
  Julio: 21000,
  Agosto: 41200,
  Septiembre: 25000,
  Octubre: 21500,
  Noviembre: 91000,
  Diciembre: 21000,
}
resultados = {}
ventas.values.each_slice(3).each_with_index do |q, i|
  resultados["Q#{i + 1}"] = q.sum
end
print resultados


# ventas_mensuales = ventas.values
# ventas_mensuales = ventas_mensuales.each_slice(3).to_a
# filtrado = Hash.new
# n=1
# ventas_mensuales.each do |value|
#     string = "Q#{n}"
#     filtrado[string] = value.sum
#     n += 1
# end
# print filtrado