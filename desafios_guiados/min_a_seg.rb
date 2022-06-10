def min_a_seg(arreglo)
    minutos = []
    arreglo.each do |j|
        minutos.push((j.to_f/60).round(2))
    end
    return minutos
end
procesos = [4003,500,893,3232,7733,773,233,30,5000]
print min_a_seg(procesos)