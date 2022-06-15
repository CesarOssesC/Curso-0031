require_relative 'classes/alumnos'
require_relative 'classes/profesores'
require_relative "classes/clientes"
require_relative "classes/proveedores"

objeto1 = Alumnos.new
objeto2 = Profesores.new
objeto3 = Clientes.new
objeto4 = Proveedores.new


objeto1.full_name("césar", "osses")
objeto1.get_address("valparaiso", "calle falsa #123")
puts ""
objeto2.full_name("roberto", "hernandez")
objeto2.get_address("tascala", "calle mexicana #123")
puts ""
objeto3.full_name("juan", "perez")
objeto3.get_address("santiago", "calle corta #123")
puts ""
objeto4.full_name("jane", "doe")
objeto4.get_address("viña del mar", "calle larga #123")
