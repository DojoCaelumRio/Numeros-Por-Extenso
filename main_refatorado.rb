UNIDADES = ["zero","um","dois","tres","quatro","cinco","seis","sete","oito","nove"]
DEZ_A_DEZENOVE = ["","onze","doze","treze", "quartorze", "quinze","dezesseis", "dezesete","dezoito", "dezenove"]
DEZENAS = ["","dez","vinte","trinta","quarenta","cinquenta","sessenta","setenta","oitenta","noventa"]
CENTENAS = ["", "cento", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos"]
CEM_POR_EXTENSO = "cem"

def extenso_de(numero)
  numero_por_extenso = ultima_casa_decimal_por_extenso(numero)

  unless numero.between? 11, 19
    numero_por_extenso += unir_com_resto_por_extenso(numero)
  end

 return numero_por_extenso
end

def ultima_casa_decimal_por_extenso(numero)
  if numero < 10
    return UNIDADES[numero]
  elsif numero < 100
    return dezena_por_extenso(numero)
  elsif numero < 1000
    return centena_por_extenso(numero)
  end
end

def dezena_por_extenso(dezena)
  if dezena.between? 11, 19
    return DEZ_A_DEZENOVE[dezena-10]
  else
    indice = dezena / 10
    return DEZENAS[indice]
  end
end

def centena_por_extenso(centena)
  if centena == 100
    return CEM_POR_EXTENSO
  else
    return CENTENAS[centena/100]
  end
end

def unir_com_resto_por_extenso(numero)
   uma_casa_decimal_a_menos = numero % (10 ** (numero.to_s.size - 1))
   return "" if uma_casa_decimal_a_menos == 0
   return " e " + extenso_de(uma_casa_decimal_a_menos)
end 
