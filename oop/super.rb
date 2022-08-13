class X
  def metodo_complejo
    puts "Hola"
  end

  
end

class Y < X
  def metodo_complejo
    super
    puts "antes"
    puts "después"
    
  end
end

Y.new.metodo_complejo
