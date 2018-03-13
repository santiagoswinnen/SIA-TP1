#Recibe el nombre del archivo como parametro y devuelve un vector de vectores con los datos. 

function patterns = dataParser(filename)
  
  patterns = [];
  
  file = fopen(filename, 'r');
  if(file < 0)
    printf('Error\n');
  else
    while(!feof(file))
      patterns = [patterns; str2num(fgetl(file))];
    end;
    fclose(file);
  end;
endfunction
  