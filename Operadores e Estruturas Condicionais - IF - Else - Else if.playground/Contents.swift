//: Playground - noun: a place where people can play

import UIKit

//####################### OPERADORES #######################//

/*
Atribuição: =
Aritméticos: +, -, *, /, % (módulo)
Compostos: +=, -=, *=, /=, %=
Lógicos: &&, ||, ! (negação)
Comparação: >, <, >=, <=, ==, !=
Identidade (usado em classes): ===, !===
Ternário: (booleano) ? “resultado true” : “resultado false” § Coalescência nula: valor1 ?? Valor2
Closed Range: 1...100
Half-Open Range: 1..<100
*/


//####################### Estruturas de Condicao #######################//
                        // If  // Else // Else if
let grade = 7.0
if grade >= 7.0 {
    print ("Aprovado")
}else {
    print ("Reprovado")
}

//############################## ELSE IF  #######################//
var temperature = 0, climate = ""
if temperature <= 0 {
    climate = "Muito frio"
}else if temperature < 14 {
    climate = "Frio"
}else if temperature < 21 {
    climate = "Agradavel"
} else if temperature < 30 {
    climate = "Quente"
}else {
    climate = "Muito quente"
}

//############################## SWITCH  #######################//

// Em switch o switch precisa ser exaurido ( ter todos os cenarios possiveis cobertos)

//Ex01
var letter = "O" , letterType = ""
switch letter.lowercased() {
case "a" ,"e", "i" ,"o", "u":
letterType = "vogal"
default:
letterType =  "consoante"
}

// Exe 02
let speed: Double = 90.0
switch speed {
case 0.0..<20.0:
print("Primeira marcha")
case 20.0..<40.0:
print("Segunda marcha")
case 40.0..<50.0:
print("Terceira marcha")
case 50.0..<90.0:
print("Quarta marcha")
default:
print("Quinta marcha")
}

//############################## WHILE #######################//
// Controle de fluxo  //
var count = 1
while count <= 10 {
    print ("count is \(count)")
    count += 1
}

//Repeate-While
var maxNumbers = 15, numbers: [Int] = [], number: Int = 0
repeat {
    number = Int (arc4random_uniform(25) + 1)
    if numbers.index(of: number) == nil {
        numbers.append(number)
    }
}while numbers.count < maxNumbers
numbers.sort()

//############################## FOR IN #######################//
let names = ["Paulo" , "Maria" , "Bruno" , "Joao" , "Felipe"]

//Arrays
for name in names {print ("Nome : ", name) }

// Usando range // Multiplicacao
for index  in 1...5 {
    print ("\(index) multiplicado por 5 e \(index * 5)")
}

//Dicionarios .//dictionary
let people = ["Paulo" : 25, "Renata":18, "Pedro": 32, "Carol": 35]
for (name, age) in people {
    print ("\(name) tem \(age) anos")
}

// Usando o Stride: definimos o inicio , o fim e o icremento
for i in stride(from: 3, to: 100, by: 3) {print(i)}
//3,6,9,12,15,18,21,24,27,30

