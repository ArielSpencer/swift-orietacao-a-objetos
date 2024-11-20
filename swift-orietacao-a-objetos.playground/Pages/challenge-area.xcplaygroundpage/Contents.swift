protocol Area {
    var area: Double { get }
}

struct Quadrado: Area {
    let lado: Double
    
    var area: Double {
        lado * lado
    }
}

struct Triangulo: Area {
    let base: Double
    let altura: Double
    
    var area: Double {
        base * altura / 2
    }
}

let quadrado = Quadrado(lado: 15)
let triangulo = Triangulo(base: 35, altura: 35)

print(quadrado.area)
print(triangulo.area)
