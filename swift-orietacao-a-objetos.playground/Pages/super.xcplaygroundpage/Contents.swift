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
    
    init(nome: String,possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Ariel", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstimo no valor de R$\(valor)")
        super.depositar(valor)
    }
}

var contaCorrente = ContaCorrente(nome: "Spencer")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(2356.35)
print(contaCorrente.saldo)
