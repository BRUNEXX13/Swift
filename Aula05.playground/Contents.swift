import Foundation

func sum(a: Int, b: Int) -> Int {
    return a + b
}
func subtract(a: Int, b: Int) -> Int {
    return a - b
}
func divide(a: Int, b: Int) -> Int {
    return a / b
}
func multiply(a: Int, b: Int) -> Int {
    return a * b
}

typealias Operation = (Int, Int) -> Int
func getOperation(named operation: String) -> Operation {
    switch operation {
    case "sum":
        return sum
    case "divide":
        return divide
    case "multiply":
        return multiply
    default:
        return subtract
    }
}
var operation = getOperation(named: "sum")

func calculate(_ a: Int, _ b: Int, operation: Operation) -> Int {
    return operation(a, b)
}
calculate(10, 12, operation: subtract)

//CLOSURE
/*
 //Sintaxe de uma função
 func nomeFuncao(param1: Tipo, param2: Tipo) -> TipoRetorno {
    código
 
    return TipoRetorno
 }
 
 //Sintaxe de uma closure
 {(param1: Tipo, param2: Tipo) -> TipoRetorno in
    código
 
    return TipoRetorno
 }
 */

calculate(20, 7, operation: {(a: Int, b: Int) -> Int in
    return a*a + b*b
})


sum(a: 2, b: 7)


/*
func login(name: String, password: String) {
    doLogin(name: name, password: password, onComplete: {(success: Bool) -> Void in
        if success {
            print("Login efetuado")
        } else {
            print("Erro no login")
        }
    })
}


func doLogin(name: String, password: String, onComplete: (Bool) -> Void) {
    onComplete(true)
}
*/

//Simplificando Closures
calculate(20, 7, operation: {(a: Int, b: Int) -> Int in
    return a*a + b*b
})

calculate(20, 7, operation: {(a, b) -> Int in
    return a*a + b*b
})

calculate(20, 7, operation: {a, b in
    return a + b
})

calculate(20, 7, operation: {
    return $0 + $1
})

calculate(20, 7, operation: {$0 + $1})

calculate(20, 7){$0 + $1}

calculate(20, 7){$0+$1}


//High Order Functions
//map

var names = [
    "Pedro",
    "Paulo",
    "João",
    "Pablo",
    "Renata",
    "Fernanda",
    "Jaqueline"
]

//Map
var uppercasedName = names.map({$0.uppercased()})

//Filter
var fiveLettersNames = names.filter({$0.count<=5})

fiveLettersNames
var sortedNames = names.sorted(by: >)
sortedNames



//Tratamento de Erro

enum AccessError: Error {
    case wrongPassword, wrongUser, wrongLogin
}

func login(name: String, password: String) throws -> String {
    let validUser = "alunofiap"
    let validPassword = "123456"
    if name != validUser && password != validPassword {
        throw AccessError.wrongLogin
    } else if name != validUser {
        throw AccessError.wrongUser
    } else if password != validPassword {
        throw AccessError.wrongPassword
    } else {
        return "usuário logado com sucesso"
    }
}

do {
    let result = try login(name: "alunofiap9", password: "1234567")
    print(result)
} catch {
    switch error as! AccessError {
    case .wrongUser:
        print("Usuário inválido")
    case .wrongPassword:
        print("Senha inválida")
    default:
        print("Usuário e senha inválidos")
    }
}

//Generics
var a = "20.0"
var b = "30.0"
func swapInts<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

swapInts(&a, &b)
a
b









































