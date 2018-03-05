# parameters: N ammount of entries, p array of patrons, s array of excepted result, g activation function and lr learning rate. 
andPatrons = [0,0 ; 0,1 ; 1,1 ; 1,0 ];
andResult = [0,0,1,0];


function perceptronSimpleLearning (N,p,s,g,lr) # s requiere -1 como primer elemento (umbral)
  changing = true;
  w = rand(N + 1);
  while(changing)
    changing = false;
    for l = 1:length(p) #recorro los patrones
      h = dot(p(l),w);
      o = g(h);
      err = s(l) - o;
      if(err != 0)
        changing = true;
        for i = 1:N+1
       
         e = p(l)(i);
         delta = lr*err*e;
         w(i) += delta;
        end 
      end
    end
   end
 end
 
 #first entry of e array must be -1 for the threshold
 function perceptronSimpleRunning (w, e) 
  return dot(e,w);
 end
 
      
     
  
  
  
  
function gEscalonada(h)
  if(h>=0)
    return 1;
  else
    return -1;
  end
end  