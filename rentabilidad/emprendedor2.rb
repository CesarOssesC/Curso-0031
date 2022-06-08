puts "-----------------------------------------------"
puts "|Bienvenido al sistema de cálculo de utilidad1|"
puts "-----------------------------------------------"
print "Ingresa el precio de producto: "
precio = gets.chomp.to_i
print "Ingresa el gasto: "
gasto = gets.chomp.to_i
print "Ingresa el número de usuarios comunes: "
usuarios_comunes = gets.chomp.to_i
print "Ingresa el número de usuarios premium: "
usuarios_premium = gets.chomp.to_i
print "Ingresa el número de usuarios gratuitos: "
usuarios_gratuitos = gets.chomp.to_i

utilidades = (precio * ((usuarios_comunes) + (usuarios_premium * 2) + (usuarios_gratuitos * 0))) - gasto

if utilidades > 0
  puts "############################"
  puts "La utilidad es #{(utilidades * 0.65).to_i} pesos"
  puts "############################"
else
  puts "############################"
  puts "La pérdida es #{utilidades.abs} pesos"
  puts "############################"
end
