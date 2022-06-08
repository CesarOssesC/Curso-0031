print "Cuantos item tendrá tu lista de html?"
i = 1
n_item = gets.chomp.to_i

while i <= n_item 
    puts "<li>#{i}</li>"
    i += 1
end