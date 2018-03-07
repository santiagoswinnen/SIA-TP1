# parameters
# N: ammount of entries 
# p: array of patrons 
# s: array of expected result
# g: activation function
# lr: learning rate. 

function w = perceptronSimpleLearning (N,p,lr) #requiere -1 como primer elemento (umbral)
  changing = true;
  w = rand(1,N+1);
   j=0;
   while(j<10)
    for l=1:length(p) 
      j++;
      h = w * p(l,1:N+1)';
      o = sign(h);
      err = p(l,end)-o;
      w += err*lr*p(l,1:N+1);
    end
   end
 endfunction