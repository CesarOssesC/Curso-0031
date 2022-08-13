class Producto
    
    attr_accessor :nombre, :stock

    def initialize(nombre)
        @nombre = nombre
        @stock = 0 
    end
end
vino = Producto.new('Casillero del Diablo')
copas = Producto.new('Copas de Cristal')
puts vino.nombre
puts vino.stock
puts copas.nombre
puts copas.stock
copas.stock = 22
puts copas.nombre
puts copas.stock
