def navidad(n)
    n.times do |i|
        n.times do |j|
            if j==(n/2-i) || i==(n/2) || j==(n/2+i) || j==n/2# || i==n #&& 2<i<n 
                print "* "
            else 
                print " "
            end
        end
        print "\n"
    end
    
    # puts "   *"
    # puts "  * * "
    # puts " * * *"
    # puts "* * * *"
    # puts "   *   "
end

#letra_o(5)
#letra_i(3)
#letra_z(5)
#letra_x(5)
#numero_cero(5)
navidad(10)