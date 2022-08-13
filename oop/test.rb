class MoldeAuto
  attr_accessor :color #agregamos el setter y el getter simultáneamente

  def initialize()
    @color = "verde"
  end
end

m1 = MoldeAuto.new
# m1.color = "rojo"
puts m1.color
#m1.@color sigue siendo un error
# "rojo"
