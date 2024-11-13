// Struct
struct ContaCorrenteStruct {
    var saldo = 0.0
    var idConta: Int
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

// Type reference: Can't be used let
var contaCorrenteStruct01 = ContaCorrenteStruct(idConta: 1)
var contaCorrenteStruct02 = contaCorrenteStruct01 // Different objects

contaCorrenteStruct01.depositar(1500)
contaCorrenteStruct02.depositar(50)

print("A conta corrente struct1: R$\(contaCorrenteStruct01.saldo).")
print("A conta corrente struct2: R$\(contaCorrenteStruct02.saldo).")


// Class
class ContaCorrenteClass {
    var saldo = 0.0
    var idConta: Int
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(idConta: Int) {
        self.idConta = idConta
    }
}

// Type value: Can be used let
let contaCorrenteClasse01 = ContaCorrenteClass(idConta: 1)
let contaCorrenteClasse02 = contaCorrenteClasse01 // Same object

contaCorrenteClasse01.depositar(2500)
contaCorrenteClasse02.depositar(100)

print("A conta corrente class1 R$\(contaCorrenteClasse01.saldo).")
print("A conta corrente class2 R$\(contaCorrenteClasse02.saldo).")
