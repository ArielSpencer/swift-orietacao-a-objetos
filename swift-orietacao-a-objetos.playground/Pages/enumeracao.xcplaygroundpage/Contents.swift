enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

// associated values
enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) -> ResultadoSaque {
        
        if valor > saldo {
            return.falha(erro: "O valor é maior do que o seu saldo.")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .pix: print("O pagamento será realizado com pix.")
        case .boleto: print("O pagamento será realizado com boleto.")
        case .saldoEmConta: print("O pagamento será realizado com saldo em conta.")
        }
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

var contaAriel: Conta = .init(nome: "Ariel")
contaAriel.pagamentoCartao(.pix)
contaAriel.depositar(100)
let resultado = contaAriel.sacar(20)

switch resultado {
    case .sucesso(let novoValor): print("O saque foi um sucesso, e o saldo é de: R$ \(novoValor)")
    case .falha(let erro): print(erro)
}

//enum Mes {
//    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
//}
//
//var novembro = Mes.novembro
//var fevereiro: Mes = .fevereiro

// raw values:
enum Mes: String {
    case janeiro, fevereiro = "Fev", marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var novembro = Mes.novembro
print(novembro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case dezCentavos = 0.10
    case vinteCincoCentavos = 0.25
    case cinquentaCentavos = 0.50
}

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)
