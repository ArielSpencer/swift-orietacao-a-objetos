class Conta {
    var saldo = 0.0 {
        willSet(novoValor) {
            print("O saldo está sendo alterado! O seu novo valor será de: R$\(novoValor)")
        }
        
        didSet(valorAntigo) {
            print("O saldo está sendo alterado! O seu novo valor antigo era de: R$\(valorAntigo)")
        }
    }
    var nome: String
    
    static var taxaTransferencia = 0.1
    
    var negativado: Bool {
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

// extension
extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaAriel = Conta(nome: "Ariel")
contaAriel.depositar(1500)

var contaGiovanna = Conta(nome: "Giovanna")
contaAriel.transferir(contaGiovanna, 1000)

print(contaAriel.saldo)
print(contaGiovanna.saldo)
