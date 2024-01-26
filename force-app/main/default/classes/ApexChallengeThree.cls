public with sharing class ApexChallengeThree {
    
	public Boolean checkMap(Map<Integer, Integer> circularMap){
		Set<Integer> visitedKeysSet = new Set<Integer>();

        for (Integer key : circularMap.keySet()) {
            if (hasCircularReference(circularMap, key, visitedKeysSet)) {
                return true;
            }
        }

        return false;
    }

    public Boolean hasCircularReference(Map<Integer, Integer> circularMap, Integer key, Set<Integer> visitedKeysSet) {
        if (visitedKeysSet.contains(key)) {
            return true; 
        }

        visitedKeysSet.add(key);

        Integer nextKey = circularMap.get(key);

        if (nextKey != null && hasCircularReference(circularMap, nextKey, visitedKeysSet)) {
            return true;
        }

        visitedKeysSet.remove(key);

        return false;
    }
}

/*
Escreva um algoritmo que valide um mapa de elementos, verificando se dentro do mapa existe uma referência circular.

Será informado um mapa de valores inteiros onde a chave do mapa estará para um valor, e este valor por sua vez, 
será uma chave em outra posição do mapa apontando para outro valor, 
o algoritmo deve validar se existe uma referência circular dentro deste mapa.

Exemplo de elementos do Mapa:
  - Item
    - Chave: 1
    - Valor: 2
  - Item
    - Chave: 2
    - Valor: 3
  - Item
    - Chave: 3
    - Valor: 4

O sistema deve informar que o mapa contém erro se existir um item que faça 
referência circular, por exemplo:
  - Item
    - Chave: 4
    - Valor: 2

*/