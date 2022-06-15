class Clientes

  def full_name(name, last_name)
    puts "Nombre Cliente: #{name.capitalize} #{last_name.capitalize}"
  end

  def get_address(comuna, direccion)
    puts "Dirrección: #{comuna.capitalize}, #{direccion}"
  end
end
