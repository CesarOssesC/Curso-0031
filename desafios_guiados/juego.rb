jugador = ARGV[0]
pc = Random.rand(3)

if jugador == "piedra" || jugador == "papel" || jugador == "tijera"

  if pc == 2
    puts "Computador juega tijera"
  elsif pc == 1
    puts "Computador juega papel"
  else
    puts "Computador juega piedra"
  end
  if (jugador == "piedra" && pc == 1) or (jugador == "papel" && pc == 2) or (jugador == "tijera" && pc == 0)
    puts "Perdiste"
  elsif (jugador == "piedra" && pc == 2) or (jugador == "papel" && pc == 0) or (jugador == "tijera" && pc == 1)
    puts "Ganaste"
  else
    puts "Empate"
  end
else
  puts "Argumento inválido: Debe ser piedra, papel o tijera."
end
