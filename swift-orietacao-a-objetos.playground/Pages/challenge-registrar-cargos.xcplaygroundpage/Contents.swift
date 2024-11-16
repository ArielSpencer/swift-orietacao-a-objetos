class Empregado {
  var nome: String
  var salario: Double

  init(nome: String, salario: Double) {
    self.nome = nome
    self.salario = salario
  }
}

class Gerente: Empregado {
  var departamento: String

  init(nome: String, salario: Double, departamento: String) {
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }
}

let gerente = Gerente(nome: "Ariel", salario: 7500.0, departamento: "TI")
print("Gerente: \(gerente.nome), Salário: \(gerente.salario), Departamento: \(gerente.departamento)")
