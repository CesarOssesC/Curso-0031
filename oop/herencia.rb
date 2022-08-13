class Vehiculo

    attr_accessor :ruedas

    def initialize
        @ruedas = 4
    end

    def arrancar
        puts "rRRRRRrRRRRRrrR"
    end

    def detenerse
        puts "El motor se ha detenido..."
    end
end

class Moto < Vehiculo
    def initialize
        @ruedas = 2
    end
end

vocho = Vehiculo.new
yamaha = Moto.new

puts "El vocho tiene #{vocho.ruedas} ruedas, la moto tiene #{yamaha.ruedas} ruedas y suena asi #{yamaha.arrancar}"