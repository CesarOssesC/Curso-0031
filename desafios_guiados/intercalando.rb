print "Cuántos números quieres imprimir: "

n = gets.chomp.to_i
n.times do |i|
    if (i % 4 == 0) || (i % 4 == 1) 
        print "*"
    else
        print "."
    end
end
