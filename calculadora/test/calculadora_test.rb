require 'Calculadora'
require 'test/unit'

class CalculadoraTest < Test::Unit::TestCase
	#Testa o metodo soma com os valores 1, 2
	def test_soma_1_2
		assert_equal(3, Calculadora.new(1,2).soma)
	end	
	
	#Testa o metodo soma com os valores 100, 200
	def test_soma_100_200
		assert_equal(300, Calculadora.new(100,200).soma)
	end	

	#Testa a subtração entre dois números 
	def test_subtracao
		assert_equal(-1, Calculadora.new(1,2).subtrai)
	end

	#Testa a subtração entre dois números 
	def test_subtracao
		assert_equal(-1, Calculadora.new(3,4).subtrai)
	end

	#Testa a subtração entre dois números 
	def test_subtracao
		assert_equal(10, Calculadora.new(10,0).subtrai)
	end
	
	#Testa a subtração entre dois números 
	def test_multiplicao
		assert_equal(2, Calculadora.new(1,2).multiplica)
	end

	#Testa a subtração entre dois números 
	def test_multiplica
		assert_equal(12, Calculadora.new(3,4).multiplica)
	end

	#Testa a subtração entre dois números 
	def test_multiplica
		assert_equal(0, Calculadora.new(10,0).multiplica)
	end

	#Testa a subtração entre dois números 
	def test_divide
		assert_equal(0.5, Calculadora.new(1,2).divide)
	end

	#Testa a subtração entre dois números 
	def test_divide
		assert_raises(ZeroDivisionError){Calculadora.new(10,0).divide}
	end
end
