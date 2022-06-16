require_relative 'generador_palabras'

class Juego
    attr_reader :palabra_secreta
    attr_reader :vidas

    def initialize
        @palabra_secreta = GeneradorPalabras.generar
        @vidas = 5
    end

    def comenzar
        puts "Bienvenido Juego del Ahorcado"
        puts "Escribe una letra para ir adivinando la palabra"
        puts "Tienes 5 vidas"
        guiones = cambiar_letras_a_guiones
        while guiones.gsub(" ", "") != @palabra_secreta && @vidas > 0 
            puts "\nTe quedan #{@vidas} vidas"
            print "#{guiones} "
            letra = gets.chomp
            letra_encontrada = false
            for posicion_letra in 0..@palabra_secreta.length-1
                if @palabra_secreta[posicion_letra] == letra
                    guiones[posicion_letra * 2] = letra
                    letra_encontrada = true
                end
            end

            if letra_encontrada == false
                @vidas -= 1
                puts "La letra no está en la palabra, intenta con otra."
            end
        end
        ha_ganado?
    end

    def ha_ganado?
        if @vidas > 0 
            puts "\nGanaste"
        else
            puts "\nPerdiste Tonto. la palabra era: #{@palabra_secreta}"
        end
    end

    def cambiar_letras_a_guiones
        return "_ " * @palabra_secreta.length
    end
    
end