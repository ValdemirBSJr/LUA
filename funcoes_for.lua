#!/usr/bin/env lua

-- https://www.tutorialspoint.com/lua/lua_functions.htm
-- https://stackoverflow.com/questions/12069109/getting-input-from-the-user-in-lua

--[[ A função a seguir recebe o nome de um arquivo texto, que deve conter uma
lista de números, e retorna a soma desses números
]]

function addarquivo (nome_do_arquivo)

	local soma = 0
	
	for linha in io.lines(nome_do_arquivo) do 
		soma = soma + tonumber(linha)
	end
	return soma
	
end

print("O valor da soma dos números do arquivo é", addarquivo("lista_numeros.txt"))


-- funcoes lambda
foo = function (a,b) print(a+b) end
foo(10, 20)

-- retornos multiplos

function retorno(x) return x, x+1 end
print(retorno(3))
