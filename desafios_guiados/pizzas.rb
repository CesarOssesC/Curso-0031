ingredientes_pizza = ["Pepperoni", "Jamon", "Queso", "Aceitunas", "Champiñones"]
print "Agrega el ingrediente que quieres para tu pizza: "
ingredientes_buscar = gets.chomp.capitalize!

if ingredientes_pizza.include?(ingredientes_buscar)
    puts "Ingrediente agregado a tu pizza"
else
    ingredientes_pizza.push(ingredientes_buscar)
    puts "ingrediente agregado a la lista y a tu pizza"
end
print ingredientes_pizza