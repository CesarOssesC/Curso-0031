require 'faker'

class GeneradorPalabras
    def self.generar 
        elegir_al_azar = rand(0..1)
        if elegir_al_azar == 0
            return generar_palabra
        else
            return generar_animal
        end
    end

    private
    def self.generar_palabra
        palabra_secreta = ["ruby", "javascript", "html", "css", "rubyonrails", "github", "windows", "vscode", "computador", "programa"]
        posicion_al_azar = rand(0..palabra_secreta.length-1)
        return palabra_secreta[posicion_al_azar]
    end
    

    def self.generar_animal
        return Faker::Creature::Animal.name.downcase
    end
    
end