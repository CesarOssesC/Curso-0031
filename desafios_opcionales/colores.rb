dato = ARGV[0]
p ARGV
# dato.to_s
p dato.class
puts ""
colores = { "greenyellow" => "#ADFF2F",
            "slategray" => "#708090",
            "azure" => "#F0FFFF",
            "maroon" => "#800000",
            "salmon" => "#FA8072",
            "darkcyan" => "#008B8B" }
print colores[dato]
print colores.invert[dato]

# colors = {  "#ADFF2F" => "greenyellow",
#             "#708090" => "slategray",
#             "#F0FFFF" => "azure",
#             "#800000" => "maroon",
#             "#FA8072" => "salmon",
#             "#008B8B" => "darkcyan" }
# print colors[dato]
