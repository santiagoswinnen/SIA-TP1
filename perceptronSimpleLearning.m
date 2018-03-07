# parameters
# N: ammount of entries 
# p: array of patrons 
# s: array of expected result
# g: activation function
# lr: learning rate. 

function w = perceptronSimpleLearning (N,p,s,lr) # p requiere -1 como primer elemento (umbral)
  changing = true;
  w = rand(1,N+1);
  while(changing)
    changing = false;
    for l = 1:length(p) #recorro los patrones
      h = dot(p(l,:),w);
      if(h>0)
        o = 1;
      else
        o = -1;
      end
      err = s(l) - o;
      if(err != 0)
        changing = true;
        for i = 1:(N+1)
         e = p(l,i);
         delta = lr*err*e;
         w(i) += delta;
        end 
      end
    end
   end
 end