class Conta {
    var saldo = 0.0 // stored property
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
