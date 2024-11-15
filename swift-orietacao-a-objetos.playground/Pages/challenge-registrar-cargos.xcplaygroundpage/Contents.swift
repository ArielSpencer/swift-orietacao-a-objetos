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

class Vendedor: Empregado {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
    
    func percentualComissao(_ totalVendas: Int) -> Double {
        return (0.1 * 50 * Double(totalVendas)) + self.salario
    }
}

let vendedor = Vendedor(nome: "Maria", salario: 5000.0, departamento: "Vendas")
print("Vendedor \(vendedor.nome): Salário: \(vendedor.salario), Comissão: \(vendedor.percentualComissao(100))")

func verificaTipo(_ empregado: Empregado) {
    if let gerente = empregado as? Gerente {
        print("O(a) \(gerente.nome) é um(a) gerente e está no departamento \(gerente.departamento).")
    } else if let vendedor = empregado as? Vendedor {
        print("O(a) \(vendedor.nome) é um(a) vendedor(a).")
    } else {
        print("O(a) funcionário(a) \(empregado.nome) é de um outro tipo.")
    }
}

verificaTipo(vendedor)
verificaTipo(gerente)
