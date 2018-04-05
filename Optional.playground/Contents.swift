//: Playground - noun: a place where people can play

import UIKit

//########### OPTIONAL   ############//
// Servem para tratar ausencia de valor em uma variavel //
// Utilizamos ? para definir um tipo como Optional //

//Exemplo Optional de String com valor Nulo
var address: String?

// Atribundo o valor de um Optional
address = "Meu endereco"

// Recuperamos / Desembrulhamos (unwrapping) o valor da optional usando !

//Recuperando o valor de um optional (** FORMA QUE NAO E SEGURA **)
var totalBook: Int? = 14
var newTotal = totalBook! + 1 // Usamos ! ao lado da variavel

//Podemos definir um tipo ja desumbralhado usando ! Na definicao do tipo, dessa forma estamos criando um:
//Implicitly Unwrapped Optional

//Exemplo da forma Segura // Optional Binding //
// e atribuindo a uma variavel de forma segura//
if let totalBooksValues =  totalBooks {
    print ("Eu tenho \(totalBooks)")
} else {
    print ("totalBook nao contem valor")
}

//Optional Chaining //
//Tecnnica segura para acessa um Optional
//Utilizamos ? apos o objeto no qual desejamos acessar uma propriedade ou chamar um metodo


//Optional com abertura implicita (Implicity Unwrapped Optional)
var euro : Double! = 3.95
var ticket : Double = 800.0
let ticketinReal = ticket * euro
