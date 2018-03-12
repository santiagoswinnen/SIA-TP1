#For this specific problem, each input is a set of 2 numbers (representing coordinates)
#and each output is a scalar.
#This function only works for one hidden layer.

#Ninputs = number of input neurons
#NhiddenLayer = number of hidden layer neurons
#Noutputs = number of outputs
#inputs = matrix of input patrons of size: number of patrons X Ninputs

function allWeights = training(Ninputs, NhiddenLayer, Noutputs, inputs, outputs)
  w = rand(NhiddenLayer, Ninputs + 1); #biases go at the end of weights for a given hidden layer neuron
  W = rand(Noutputs, NhiddenLayer + 1); 
  V = [NhiddenLayer];
  o = [Noutputs];
  d = [Noutputs];
  #FALTA UN PASO, QUE ES AGREGARLE UN -1 AL FINAL DE LOS INPUTS PARA QUE SE MULTIPLIQUE CON EL UMBRAL QUE ESTA AL FINAL DE LOS PESOS
  while 1
    V = w*inputs'; #scalar product for each neuron in hidden layer, weights by inputs
    hiddenOutput = arrayfun(sigmoid, V); #activation function for hidden layer
    o = W*hiddenOutput'; #scalar product for each neuron in output layer, weights by inputs from hidden layer
    finalOutput = arrayfun(sigmoid, o); #finalOutput is the array of values of the output layer after applying activation function
    
  endwhile
  
endfunction

function r = sigmoid(x)
  r = exp(x)/ (exp(x) + 1);
endfunction