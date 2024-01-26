public with sharing class ApexChallengeOne {
    public static Boolean checkVariables(String variable){
		return checkCPF(variable) || checkCNPJ(variable) || checkMobilePhone(variable);
	}

	public static Boolean checkCPF(String cpf){
		return Pattern.matches('^\\d{3}\\.?\\d{3}\\.?\\d{3}\\-?\\d{2}$', cpf);
	}

	public static Boolean checkCNPJ(String cnpj){
		return Pattern.matches('^\\d{2}\\.?\\d{3}\\.?\\d{3}\\/?\\d{4}\\-?\\d{2}$', cnpj);
	}

	public static Boolean checkMobilePhone(String mobilePhone){
		return Pattern.matches('\\(\\d{2}\\) \\d{5}-\\d{4}', mobilePhone);
	}
}

/*
Um cliente quer contratar você para fazer apenas a validação dos dados que é preenchido em seu cadastro.

Faça um programa que valida se o CPF, CNPJ e Celular recebidos estão corretos para serem inseridos.
O formato correto para o CPF é "000.000.000-00"
O formato correto para o CNPJ é "00.000.000/0000-00"
O formato correto para o Celular é "(00) 00000-0000"

Nomenclaturas
Nome da classe será CheckVariables
Nome do método será checkCPF
Nome do método será checkCNPJ
Nome do método será checkMobilePhone

Entrada
O programa irá receber uma String

Saída
O programa deve devolver um Boolean (true para correto e false para incorreto)


*/