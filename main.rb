UNIDADES = ["zero","um","dois","tres","quatro","cinco","seis","sete","oito","nove"]
DEZADEZENOVE = ["dez","onze","doze","treze", "quartorze", "quinze","dezesseis", "dezesete","dezoito", "dezenove"]
DEZENAS = ["","dez","vinte","trinta","quarenta","cinquenta","sessenta","setenta","oitenta","noventa"]
CENTENAS = ["", "cento", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos"]

def extenso_de(numero)
  if numero < 10
    return UNIDADES[numero]
  elsif numero < 20
    return DEZADEZENOVE[numero-10]
  elsif numero < 100
    return DEZENAS[(numero/10)] + getUnidade(numero)
  elsif numero == 100
    return "cem"
  else
    return CENTENAS[numero/100] + getDezena(numero)  
  end 
end

def getDezena(numero)
   dezena = numero % 100
   return "" if dezena == 0
   return " e " + extenso_de(numero%100)
end 

def getUnidade(numero)
  unidade = numero % 10
  return "" if unidade == 0
  return " e " + UNIDADES[unidade] 
end

