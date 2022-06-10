print "Cuántos números quieres imprimir: "

n = gets.chomp.to_i

# (1..n).each { |i| print "#{i}."}

(1..n).each do |i|
    if i.even?
        print "#{i}"
    else
        print "."
    end
end
