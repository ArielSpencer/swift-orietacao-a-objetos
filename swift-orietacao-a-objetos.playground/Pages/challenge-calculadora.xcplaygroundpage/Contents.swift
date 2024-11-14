struct CalculadoraStruct {
    let n1: Double
    let n2: Double
    
    func soma() -> Double {
        return n1 + n2
    }
    
    func subtracao() -> Double {
        return n1 - n2
    }
    
    func multiplicacao() -> Double {
        return n1 * n2
    }
    
    func divisao() -> Double {
        return n1 / n2
    }
}

let calculadoraStruct = CalculadoraStruct(n1: 10, n2: 20)

print("Calculadora Struct:")
print("Soma = \(calculadoraStruct.soma())")
print("Subtração = \(calculadoraStruct.subtracao())")
print("Multiplicação = \(calculadoraStruct.multiplicacao())")
print("Divisão = \(calculadoraStruct.divisao())")

class CalculadoraClass {
    var valor1: Double
    var valor2: Double
    
    func soma() -> Double {
        return valor1 + valor2
    }
    
    func subtracao() -> Double {
        return valor1 - valor2
    }
    
    func multiplicacao() -> Double {
        return valor1 * valor2
    }
    
    func divisao() -> Double {
        return valor1 / valor2
    }
    
    init(valor1: Double, valor2: Double) {
        self.valor1 = valor1
        self.valor2 = valor2
    }
}

var calculadoraClass = CalculadoraClass(valor1: 30, valor2: 15)

print("Calculadora Class:")
print("Soma = \(calculadoraClass.soma())")
print("Subtração = \(calculadoraClass.subtracao())")
print("Multiplicação = \(calculadoraClass.multiplicacao())")
print("Divisão = \(calculadoraClass.divisao())")
