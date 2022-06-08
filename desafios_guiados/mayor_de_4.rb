uno    = ARGV[0].to_i
dos    = ARGV[1].to_i
tres   = ARGV[2].to_i
cuatro = ARGV[3].to_i

if ARGV[3] != nil?
  if uno >= dos && uno >= tres && uno >= cuatro
    puts uno
  elsif dos >= uno && dos >= tres && dos >= cuatro
    puts dos
  elsif tres >= uno && tres >= dos && tres >= cuatro
    puts tres
  else
    puts cuatro
  end
else
  if uno >= dos && uno >= tres
    puts uno
  elsif dos >= uno && dos >= tres
    puts dos
  else
    puts tres
  end
end
