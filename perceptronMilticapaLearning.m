#e: es la matriz entrada. 
#W: es el vector de matrices de pesos donde cada matriz corresponde a las 
#conexiones entre dos capas. cantidad de filas = nro de entradas y cantidad de cols = nro de unidades en la capa de arriba.
#D:vector de vectores delta (minuscula).
#V: es el vector de matrices entrada para cada una de las capas siguientes. Donde la primera columna es el umbral.
#la cantidad de columnas es la cantidad de entradas y filas son la cantidad de patrones.
#s:salida esperada.
function w = perceptronMilticapaLearning(e,N,s)
  
  W = {rand(columns(e),N),rand(N,1)}
  V = {e,zeros(rows(e),N+1))}
  for 
endfunction