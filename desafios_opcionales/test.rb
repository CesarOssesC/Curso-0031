flores = [
    { 
        "nombre" => "hortencia",
        "clasificación" => "exterior",
        "color" => "multicolor"
    },
    {
        "nombre" => "rosa",
        "clasificación" => "exterior",
        "color" => "roja"
    }
]

flores.each do |f|
    puts f["nombre"]
end