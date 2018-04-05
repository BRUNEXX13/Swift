//: Playground - noun: a place where people can play

import UIKit
// Concatenando Strings //
var firstName = "Bruno"
var lastName = "Silva"
var cpf = "36964400869"
var fulllName = firstName + " " + lastName + " " + cpf

// Interpolacao de Strings // Ou Concatenacao de Strings
var name = "\(firstName) \(lastName)"


//########### TUPLAS  POSSUEM 4 TIPOS  = Tipos Compostos ############//
var address: (String, Int, String ) = ("Av Paulista", 1000, "01311-000")

//Tupla com elementos nomeados
var student: (name: String, age: Int, grade: Double, rm: Int) = ("Bruno Silva " , 33, 10, 75761)

//Acessando uma tupla pela localizacao do elemento
print("O cep da FIAP Paulista e \(address.2)")

// Acessando uma tupla pelo nome do elemento //
print("A nota do aluno \(student.name) \(student.rm) foi \(student.grade)")

//Decompondo uma tupla em variaveis//
let(street, number , zipCode) = address
print("FIAP: \(street) numero \(number), CEP: \(zipCode)")

// Se nao desejamos algum dos elementos _ //
let (name, _, grade) = student



