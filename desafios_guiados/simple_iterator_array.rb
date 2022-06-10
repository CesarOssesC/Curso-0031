# a = [1,2,3,4,5,6]
# a1 = a.select { |element| element.even? }
# print

numeros = [*1..1000]
numeros_pares = numeros.select { |num| num.even?}
print numeros_pares