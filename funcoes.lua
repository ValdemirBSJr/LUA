#!/usr/bin/env lua

-- https://www.tutorialspoint.com/lua/lua_functions.htm
-- https://stackoverflow.com/questions/12069109/getting-input-from-the-user-in-lua

function valor_maximo (numero1, numero2)

   if (numero1 > numero2) then
      resultado = numero1;
   else
      resultado = numero2;
   end
   
   return resultado;
   
end

print("O maior número entre os dois é: ", valor_maximo(10, 4))
print("O maior número entre os dois é: ", valor_maximo(6, 5))

io.write("Digite dois valores")
x,y = io.read("*n","*n") -- pega 2 valores no mesmo input(sendo numeros
print("O maior número entre " .. x .. " e " ..y .. " é: ", valor_maximo(x, y))
