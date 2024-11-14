class Retangulo {
    var base: Double
    var altura: Double
    
    func calcularArea() -> Double {
        let area = base * altura
        print("Area: \(area)")
        return area
    }
    
    func calcularPerimetro() -> Double {
        let perimetro = (base + altura) * 2
        print("Perimetro: \(perimetro)")
        return perimetro
    }
    
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
    }
}

let retangulo = Retangulo(base: 10, altura: 20)
retangulo.calcularArea()
retangulo.calcularPerimetro()
