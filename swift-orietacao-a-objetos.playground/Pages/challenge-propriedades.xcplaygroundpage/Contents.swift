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
