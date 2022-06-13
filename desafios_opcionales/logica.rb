n= ARGV[0].to_i
def patron_2(n)
    n.times do |i|
        print "*"
    end
    print "\n"

    (n-2).times do |i|
        n.times do |j|
            if (j < n / 2) || (j > n / 2)
            print " "
            else
            print "*"
            end
        end
        print "\n"
    end

  n.times do |i|
    print "*"
  end
  
end
patron_2(n)
