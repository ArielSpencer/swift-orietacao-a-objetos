struct ContaCorrente {
    var saldo = 0.0
    var idConta: Int
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
        print("Valor sacado da conta de ID \(idConta): - R$\(valor).")
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
        print("Valor depositado na conta de ID \(idConta): + R$\(valor).")
    }
}

var contaCorrenteAriel = ContaCorrente(idConta: 1)

contaCorrenteAriel.depositar(1500)

var contaCorrenteGiovanna = ContaCorrente(idConta: 2)
contaCorrenteGiovanna.depositar(200)
contaCorrenteGiovanna.sacar(100)

print("A conta corrente de ID \(contaCorrenteAriel.idConta) está com saldo de R$\(contaCorrenteAriel.saldo).")
print("A conta corrente de ID \(contaCorrenteGiovanna.idConta) está com saldo de R$\(contaCorrenteGiovanna.saldo).")
