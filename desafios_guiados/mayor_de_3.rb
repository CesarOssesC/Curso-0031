uno    = ARGV[0].to_i
dos    = ARGV[1].to_i
tres   = ARGV[2].to_i

if uno >= dos && uno >= tres
  puts uno
elsif dos >= uno && dos >= tres
  puts dos
else
  puts tres
end
