n = ARGV[0].to_i


puts "Árbol"
puts ""
# Hojas
for hojas in 0..(n - 1)
  print " " * (n - hojas)
  print "* " * hojas
  puts " "
end
# Tronco
(n - 3).times do
  (1).times do
    print " " * (n - 1)
    print "*"
  end
  print " "
  print "\n"
end
# Base
print " "
(n - 2).times do
  print " " * (n - (n - 1))
  print "*"
end
puts ""
puts ""
