class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

cartas = []
pintas = ["C", "D", "E", "T"]
5.times do |i|
    numero = Random.rand(1..13)
    cartas.push Carta.new(numero, pintas.sample)
end
print cartas
