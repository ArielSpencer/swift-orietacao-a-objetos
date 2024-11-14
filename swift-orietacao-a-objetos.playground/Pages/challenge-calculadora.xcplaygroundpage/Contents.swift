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
