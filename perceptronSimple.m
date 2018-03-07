andPatrons = [-1, -1, 1,1,-1; -1, 1, 1,1,1;-1, 1,1, -1,-1; -1, -1,-1, -1,-1]
length(andPatrons)

orPatrons = [-1, -1; -1, 1;1, 1; 1, -1]

correctedWeights = perceptronSimpleLearning (3,andPatrons,0.2)
sign(dot(correctedWeights, [-1,1,-1,-1]))