//: Playground - noun: a place where people can play

import UIKit

/// ##################### COLECOES ##################

//## Arrays ## //
// Lista ordenada do mesmo tipo

var emptyArray: [String] = []
var emptyArray2 = [String] ()
var shoppingList: [String] = ["Acucar", "Leite", "Cafe"]
var inferredShoppingList = ["Acucar", "Leite", "Cafe"]

// Arrays Vazios//
var emptyIntArray: [Int] = []

// Teste se o array esta vazio
if shoppingList.isEmpty {
    print("A lista de compra esta vazia")
}else {
    print("a lista de compra NAO esta vazia")
}
//Recuperando Elementos
//var firstItem = shoppingList[0]
//print("A lista tem  \(shoppingList.count) items ") // a lista tem 3 itens



// Adicao Alteracao de Elementos//
shoppingList.append("Sabao")
shoppingList += ["Queijo"]
shoppingList += ["Manteiga", "Pao", "Azeitona"]

//Usndo indices e ranges
shoppingList[1] = "Leite em po"
shoppingList[4...6] = ["Maca", "Pera"]
shoppingList.insert("Banana", at: 3)

//Recuperando Elementos
var firstItem = shoppingList[0]
print("A lista tem  \(shoppingList.count) items ") // a lista tem 8 itens agora

//Remocao de elementos
let sugar = shoppingList.remove(at: 0) //Remove o primeiro
let milk = shoppingList.removeFirst() //Remove o primeiro
let cheese = shoppingList.removeLast() //Remove o ultimo
shoppingList.removeLast(2)          // remove os 2 ultimos

//Pesquisando elementos em um array
if let bananaIndex = shoppingList.index(of: "Banana") {
    print ("Banana nao se encontra no indice \(bananaIndex)")
}else{
    print ("Nao tem banana na lista de compras")
}

// Outra forma de pesquisa
if shoppingList.contains("Arroz") {
    print("Compraram arroz")
}

// ##################### Dicionarios ##################

// Inizializacao
var states: [String: String ] = ["BA" : "BAHIA", "SP": "SAO PAULO" , "RJ" : "RIO DE JANEIRO" ]

var emptyStates:[String: String] = [:] // Inicializando um Dicionario Vazio

//verifica se um dicionario esta vazio
if states.isEmpty{
    print ("Dicionario de estados esta vazio")
}

//verificando a presenca de um elemento no dicionario//
if let stateName = states ["RJ"] {
    print ("O nome do estado e \(stateName).")
}
if states ["AC"] != nil {
    print ("O nome do estado e \(states.count) items")
}

// total de elementos em dicionario
print("O dicionario contem \(states.count) items:")


//Inserindo Atualizando Elementos
states["MG"] = "Minas Gerais"
states.updateValue("S. Paulo", forKey: "SP")

//Iteracao
for state in states {
    print("\(state.key) : \(state.value)")
}

//Iteracao por decomposicao
for (uf,name) in states {
    print("\(uf) : \(name)")
}

//Iteracao somente nas chaves//
for uf in states.keys {
    print("Sigla do estado e  \(uf)")
}

//Iteracao somente nos valores//
for name in states.values{
    print("Nome dos estados : \(name)")
}

