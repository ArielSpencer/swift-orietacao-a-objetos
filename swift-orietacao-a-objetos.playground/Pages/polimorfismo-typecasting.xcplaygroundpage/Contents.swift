class Conta {
    var saldo = 0.0
    var nome: String
    
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
class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão de débito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String,possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Ariel", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
contaPoupanca.sacar(25)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstimo no valor de R$\(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 7.5
    }
}

var contaCorrente = ContaCorrente(nome: "Spencer")
contaCorrente.depositar(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(2356.35)
print(contaCorrente.saldo)

// Polimorfismo
func exibeSaldoConta(_ conta: Conta) {
    if conta is ContaCorrente {
        print("Conta do tipo conta corrente")
        print("Saldo: R$\(conta.saldo)")
    }
    // Typecasting
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(1000)
        print("Saldo: R$\(conta.saldo)")
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {
        return }
        print(contaPoupanca.possuiCartaoDebito)
    
// error:
//  var contaCorrente2 = conta as! ContaCorrente
//  contaCorrente2.solicitarEmprestimo(100)
}

exibeSaldoConta(contaPoupanca)
exibeSaldoConta(contaCorrente)


