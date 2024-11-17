class Conta {
    var saldo = 0.0 /*stored property*/ {
        willSet { // property observers -> willSet
            print("O saldo está sendo alterado! O seu novo valor será de: R$\(newValue)")
        }
        
        didSet { // property observers -> didSet
            print("O saldo está sendo alterado! O seu novo valor antigo era de: R$\(oldValue)")
        }
    }
    var nome: String // stored property
    
    static var taxaTransferencia = 0.1 // static property
    
    var negativado: Bool { // computed property
        return saldo < 0
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

var contaAriel = Conta(nome: "Ariel")

contaAriel.sacar(1500)
print(contaAriel.negativado)
contaAriel.depositar(1700)
print(contaAriel.negativado)
print(Conta.taxaTransferencia)
