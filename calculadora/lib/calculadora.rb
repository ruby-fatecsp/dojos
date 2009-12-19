class Calculadora 

	def initialize(valor1, valor2)
		@valores = [valor1, valor2]
	end

	def valores
		@valores
	end

	def soma
 	 valores[0] + valores[1]
	end

	def subtrai
	  valores[0] - valores[1]
	end

	def multiplica
	  valores[0] * valores[1]
	end

	def divide
	  valores[0] / valores[1]
	end

end	
