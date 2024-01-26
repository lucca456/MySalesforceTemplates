public with sharing class ApexChallengeTwo {
	
	

	public Integer checkProcessNumber(String processTrail, Integer numberOfProcesses){
		Integer cycles = 0;
		Integer currentReads = 0;

		for (Integer i = 0; i < processTrail.length(); i++) {

			String ch =  processTrail.substring(i, i + 1);

			if (ch.equals('R')) {
				currentReads++;
			}
			else if (ch.equals('W')) {
				cycles++;
				currentReads = 0;
			}
			if (currentReads == numberOfProcesses) {
				currentReads = 0;
				cycles++;
			}
		}

		if (currentReads > 0) {
			cycles++;
		}


		System.debug('cycles => ' + cycles);
		return cycles;
	}
    
}

/*
Em diversos sistemas de computação, vários processos podem ler de um mesmo recurso durante o mesmo ciclo de máquina,
mas somente um processo pode escrever no recurso durante o ciclo de máquina.
Leituras e gravações não podem se misturar em um mesmo ciclo de máquina.
Dado um histórico de leituras e gravações que ocorreram durante a execução de um determinado processamento,
e um número inteiro que representa o número de processos usados, calcule a duração mínima do processamento, em ciclos de máquina.

O rastro de histórico representa cada leitura por uma letra 'R' e cada gravação por uma letra 'W'.

Por exemplo, se o rastro de histórico é "RWWRRR" e o número de processos é 3,
então o número mínimo de ciclos de máquina será 4: um para a primeira leitura,
um para cada uma das gravações e apenas um para todo o último grupo de leituras.

Nomenclaturas
Nome da classe será MultipleRead
Nome do método será checkProcessNumber

Entrada
O programa receberá um texto (rastro de processamento em uma sequência de caracteres 'R' ou 'W')
e um inteiro representando o número de processos,
ou seja, uma indicação de quantas operações de leitura podem ser processadas simultaneamente. A entrada termina em EOF.

Saída
Retorne um inteiro que será o número mínimo de ciclos de máquina necessários para se processar o rastro informado.

*/