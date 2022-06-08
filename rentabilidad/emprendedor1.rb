puts "-----------------------------------------------"
puts "|Bienvenido al sistema de cálculo de utilidad1|"
puts "-----------------------------------------------"
print "Ingresa el precio de producto: "
precio = gets.chomp.to_i
print "Ingresa el gasto: "
gasto = gets.chomp.to_i
print "Ingresa el numero de usuarios: "
numero_usuarios = gets.chomp.to_i

utilidades = (precio * numero_usuarios) - gasto
if utilidades > 0
    puts "############################"
    puts "La utilidad es #{(utilidades * 0.65).to_i} pesos"
    puts "############################"
else
    puts "############################"
    puts "La pérdida es #{utilidades.abs} pesos"
    puts "############################"
end


