def imprimir_menu
  puts "Jugador, elige una de las siguientes alternativas: "
  puts "1- Piedra"
  puts "2- Papel"
  puts "3- Tijera"
  puts 'Escribe "Salir" para terminar el programa'
  puts "Ingresa una opción: "
end

imprimir_menu
# puts "Jugador 1 elije"
# jugador1 = gets.chomp
# puts "Jugador 2 elije"
# jugador2 = gets.chomp
#imprimir_menu

def juego
  puts "Jugador 1 elije"
  jugador1 = gets.chomp
  puts "Jugador 2 elije"
  jugador2 = gets.chomp
  while jugador1 != "salir" && jugador2 != "salir"
 
    if jugador1 == jugador2
      puts "Empate"
    elsif jugador1 == "piedra" && jugador2 == "tijera" || jugador1 == "papel" && jugador2 == "piedra" || jugador1 == "tijera" && jugador2 == "papel"
      puts "Gana el jugador 1"
      
    elsif jugador2 == "piedra" && jugador1 == "tijera" || jugador2 == "papel" && jugador1 == "piedra" || jugador2 == "tijera" && jugador1 == "papel"
      puts "Gana el jugador 2"
      # puts "imprimir_menu"
    else
      puts "comando no valido"
      break
    end
    puts "#####################################################"
    puts "#####################################################"
    puts "Jugador 1 elije"
    jugador1 = gets.chomp
    puts "Jugador 2 elije"
    jugador2 = gets.chomp
  end
  
  puts "Gracias por jugar"
end
juego
