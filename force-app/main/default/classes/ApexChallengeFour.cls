public with sharing class ApexChallengeFour {
    
	public static void calculateCakes (
		List<Integer> moneyIngredientsCakeTypesList,
		List<integer> IngredientsPriceList,
		List<List<Integer>> testList){

	}
}

/*
Dona Maria é uma senhora que está aposentada e faz doces. Ela começou a fazer bolos para complementar a renda da família.
Para fazer um bolo, Dona Maria precisa de certa quantidade de ingredientes diferentes.

Cada ingrediente tem um custo fixo por unidade.
Ela tem uma quantia de dinheiro D máxima para gastar na compra dos ingredientes.
Dentre os tipos de bolos que existem, você deve escolher apenas um tipo, de maneira a maximizar a quantidade de bolos.
Calcule o número máximo de bolos de um único tipo que podem ser confeccionados.

Nomenclaturas
Nome da classe será FactoryCakes
Nome do método será calculateCakes

Entrada
O método receberá 2 listas de inteiros e 1 lista de lista de inteiros.
A primeira lista terá 3 números inteiros, indicando o dinheiro que Dona Maria tem, o 
número de ingredientes existentes (I) e a quantidade de tipos de bolos existentes (B), respectivamente.
A segunda lista terá I números inteiros indicando o preço da unidade de cada ingrediente.
A terceira lista terá B listas de inteiros. Onde o primeiro inteiro indicará quantos PARES de números terão 
na lista, e cada PAR indica o índice do ingrediente e a quantidade necessária, respectivamente. 

Saída
Retorne o número máximo de bolos do mesmo tipo que podem ser confeccionados.

Exemplos de Entrada
[10, 4, 3],
[10, 10, 10, 10],
[
     [3, 0, 1, 1, 1, 2, 1],
     [2, 0, 1, 1, 1],
     [1, 3, 1]
]

Exemplos de Saída
2

*/