paises = {
    'Mexico' =>  100,
    'Chile' => 233,
    'Alemania' => 30,
    "Estado unidos" => 77
}

puts "Estos son los paises"
print paises.keys
puts ""
puts "estos son su valores"
print paises.values
puts ""
puts "Estos son los mayores a 55: "
paises.values.each do |j|
    if j >= 55
        puts j
    end
end