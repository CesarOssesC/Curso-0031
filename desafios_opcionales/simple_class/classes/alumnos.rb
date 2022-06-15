class Alumnos

    def full_name(name, last_name)
        puts "Nombre Alumno: #{name.capitalize} #{last_name.capitalize}"
    end

    def get_address(comuna, direccion)
        puts "Dirección: #{comuna.capitalize}, #{direccion}"
    end
end