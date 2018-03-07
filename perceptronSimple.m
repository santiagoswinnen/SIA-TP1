andPatrons = [-1,0, 0;-1, 0, 1;-1, 1, 1;-1, 1, 0];
andResult = [0,0,1,0];
correctedWeights = perceptronSimpleLearning (2,andPatrons,andResult,0.1)

 
 #first entry of e array must be -1 for the threshold
 function result = perceptronSimpleRunning (w, e) 
  result = dot(e,w);
 end


 