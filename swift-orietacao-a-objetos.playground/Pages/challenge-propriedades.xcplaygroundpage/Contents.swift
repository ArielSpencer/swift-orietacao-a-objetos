// computed properties challenge
class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var IMC: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade >= 18
        
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}

let pessoa = Pessoa(nome: "Ariel", idade: 28, altura: 1.75, peso: 68.5)
print("Nome: \(pessoa.nome)")
print("Idade: \(pessoa.idade)")
print("Altura: \(pessoa.altura)m")
print("Peso: \(pessoa.peso)kg")
print("IMC: \(pessoa.IMC)")
print("Adulto: \(pessoa.adulto ? "Sim" : "Não")")

// property observers challenge

class Colaborador {
    var nome: String
    var salario: Double {
        willSet {
            if newValue > salario {
                print("Parabéns, você recebeu um aumento no salário.")
            } else if newValue == salario {
                print("Parece que não houve uma promoção dessa vez.")
            }
        }
        
        didSet {
            if salario < oldValue {
                salario = oldValue
                print("O novo salário não pode ser menor do que era anteriormente. O salário se manteve em: R$\(salario)")
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

let colaborador = Colaborador(nome: "Ariel", salario: 3000)
colaborador.salario = 3000
colaborador.salario = 5300
colaborador.salario = 4000
print("Salário atual do colaborador \(colaborador.nome): R$\(colaborador.salario)")
