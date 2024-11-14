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
    var possuiCartaoDebito = false
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão de débito")
    }
}

var contaPoupanca = ContaPoupanca(nome: "Ariel")
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstimo no valor de R$\(valor)")
    }
}

var contaCorrente = ContaCorrente(nome: "Spencer")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(2356.35)

// Final (can't be inherited)
final class Pessoa {
    var nome: String
    var sobrenome: String
    
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
    
    func nomeCompleto() -> String {
        return "\(nome) \(sobrenome)"
    }
}

let pessoa = Pessoa(nome: "Ariel", sobrenome: "Spencer")
print("Nome completo: \(pessoa.nomeCompleto())")

// Failure example
//class Apelido: Pessoa {
//    var nick = ""
//    
//    func recebeApelido(_ nick: String) {
//        self.nick = nick
//        print("O apelido de \(nomeCompleto()) é \(nick)")
//    }
//}
//
//var apelido = Apelido(nome: "Ariel", sobrenome: "Spencer")
//apelido.recebeApelido("Spencer")
