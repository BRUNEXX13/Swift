//: Playground - noun: a place where people can play

import UIKit


//################## ENUMERADORES ##############

// Define um tipo comum para um grupo de valores, permitindo que se trabalhe com tais
//valores e maneira segura//

enum Compass {
    case north
    case south
    case east
    case west
}
var heading:Compass = Compass.north
heading = .south
switch heading {
case .north:
    print("Indo para o norte")
case .south:
    print("Indo para o Sul")
case .east:
    print("Indo para o leste")
case .west:
    print("Indo para o oeste")
}

//Unica Linha
enum Month {
    case january, february, march, april, may, june, july, august,
    september, october, november, december
}


// Enums com Valores padroes
//Caso o valor nao seja definido
enum Weekday: String {
    case sunday = "domingo"
    case monday = "Segunda"
    case tuesday = "terca-feira"
    case wednesday = "quinta-feira"
    case friday = "sexta feira"
    case saturday = "sabado"
}
print(Weekday.sunday.rawValue) // Domingo

//Enumerate number -- Percorre o enum
enum MonthIndex: Int {
    case january = 1, february, march, april, may, june, july, august,
    september, october, november, december
}

//Inicializando
if let sunday = Weekday(rawValue: "Domingo" ) {
    print(sunday.hashValue, sunday.rawValue) //0 domingo
}

// Valores Associados ( Associated Values)
// Podemos assoaciar valores, de diferentes tipos a enumeradores //

enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let measure: Measure = .size(width: 0.6, height:1.71)
switch measure {
case .weight(let weight):
    print("O seu peso e  \(weight)")
case .age(let age):
    print ("A sua idade e \(age)")
case .size(let size):
    print("Voce tem \(size.width)m de largura")
    print("e \(size.height)m de altura")
}

//################## Structs ##############

// Definem propriedades e Metodos que armazenam valores e executam operacoes
// Ja  possuem inicializadores pre-definidos que servem para alimentar suas variaveis
// Pode implementar protocolos que fornecem padroes de funcionalidade
// Sao passadas por valor, nao por referencia

struct Driver {
    var name: String
    var registration: String
    var age: Int
    
    // Usamos mutating para que um metodo interno possa modificar
    // o valor das propriedades de uma struct
    mutating func changeAge(newAge: Int){
        age = newAge
    }
}

// Inicializador pre-definido
let paula = Driver(name: "Paula Lima", registration: " 23409-7", age: 22)

// Os valores sao passados por copia
var leonardo = paula
leonardo.name = "Leonardo Ferreira"
leonardo.registration = "34229-0"
leonardo.changeAge(newAge: 35)

print(paula.name, paula.age) // Paula Lima 22
print(leonardo.name, leonardo.age)


//################## FUNCOES ##############

// Permite organizar trechos de codigo fonte com diferentes finalidades
// Cada funcao possui um tipo, que consite dos tipos dos parametros da funcao e do seu retorno
// Podem aceitar quaisquer tipo de parametro e de retorno, inclusive outra funcoes ou tuplas por exemplo

// EM SWIFT , funcoes sao {{ FIRT CLASS CITZENS}} ou ( OBJETOS DE PRIMEIRA CLASSE )
// ou seja elas podem ser atribuidos a uma variavel e tambem passadas/retornadas como parametros de outra funcoes


// Algumas funcoes do framework FOUNDATION

//Matematicas
//pow: POTENCIA
pow(2,3) //8
pow(64, 0.5) //8

//sqrt : Raiz quadrada
sqrt(64) //8

// Abs :: Valor Absoluto (sem sinal)
abs(-3)

//round, floor, ceil
let dolar = 3.20
round(dolar) //Arrendondamento
floor(dolar) // Pra baixo
ceil(dolar)  // Pra cima

// min, max, Menor valor, Maior Valor
min(5,9,12,0,22,14) //0
max(5,9,12,0,22,14) //22

// Strings
var teams = ["Palmeiras", "Sao Paulo", "Corinthians", "Santos"]

//enumated: decompoe o array em tuplas de chave / valor
for (index, team) in teams.enumerated() {
    print (index,team) // index e a chave e team e o valor
}

// min, max: menor valor // maior valor
teams.min() //palmeiras
teams.max() // santos

// joined retorna uma string com o valores do array separados por um sperador
let teamsString = teams.joined(separator: ";")

// hasPrefis, hasSufix: verifica se a string inica ou termina com com o valor passado
var name = "Maria Fernanda Lima"
name.hasPrefix("M") // false
name.hasSuffix("c") //true

//lowercased e uppercade : conter para minuscula e maiscula
name.lowercased() //maria fernanda lima
name.uppercased() // MARIA FERNANDA LIMA

// map: modifica cada um dos elemetos de um array
let teamsUppercased = teams.map({$0.uppercased()})
teamsUppercased

// reduce : agrega os valores de um array
let ages = [29, 32, 38, 19 , 34, 16 ,16]
let agesCount = ages.reduce(0, {$0 + $1})
print(agesCount)

//components: separa os elementos de uma string em arrays
teamsString.components(separatedBy: ";")
//["Pamleiras", "Sao Paulo",..

// repplacingOcurrence > substitiu as ocorrencias de um valor por outro em uma string
teamsString.replacingOccurrences(of: ";", with: "-")



// ################## FUNCOES PERSONALIZADAS ###########


// funcoes sem parametro e retorno
func doNothing() {
    doNothing()
}

//// ################## funcoes com retorno// ##################
func getNumberMonths() -> Int {
    return 12
}
let x1 = getNumberMonths() //x1 recebe 12


// ################## // Funcoes com  mais de um parametro// ##################
func double (a: Int) -> Int {
    return 2 * a
}
let x2 = double(a: 10)  //x2 recebe 20


// ################## //Funcoes com mais de um parametro// ##################
func sum (a:Int, b:Int) -> Int {
    return a + b
}
sum(a: 1, b: 5)  // res  =6


// ################## Funcoes com mais de um retorno

let student = "Bruno Santos; 31"
func getNameAndAge(data: String) -> (name: String, age: Int) {
    let student = data.components(separatedBy: ";")
    guard let name = student.first, let ageStr = student.last , let age = Int(ageStr) else {
        return ("", 0)
    }
    return (name, age) // (name: Bruno Santos, age 31)
}




// Nomes externos e internos de parametros
func say(greeting sentence: String, to name: String){
    print("\(sentence) \(name)!")
}
say (greeting: "Hello", to: "Fernando")

//Funcoes sem parametro externo e com valor padrao
func power(_ a: Double, _ b: Double = 2) -> Double {
    return pow(a, b)
}
power(3,3)


// Criando funcoes que aceitam N parametros
func sumValues(intitialValue: Int, withValue values: Int...) ->  Int{
    var result = intitialValue
    for value in values {
        result += value
    }
    return result
}
    sumValues(intitialValue: 10, withValue: 5, 8, 9, 7, 6, 5, 1, 2)


// Aceitando funcoes como parametro
// Calculadora
func multiply(a:Int, b:Int) -> Int {
    return a * b
}
func divide(a: Int, b:Int) -> Int {
    return a/b
}
func subtract(a:Int, b:Int) -> Int {
    return a - b
}
func calculate (a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation (a,b)
}
calculate(a: 12, b: 6, operation: divide)

// Devolvendo Funcoes
typealias Operation = (Int, Int) -> Int // criando um apelido apra o tipo
func getOperation(named operation: String) -> Operation {
    switch operation.lowercased() {
    case "adicao":
        return sum
    case "subtracao":
        return subtract
    case "multiplicacao":
        return multiply
    default:
        return divide
    }
}
let op = getOperation(named: "subtracao")
op(7,2) //5


