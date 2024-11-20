enum Moeda: Int {
    case UmCentavo = 1
    case CincoCentavos = 5
    case DezCentavos = 10
    case VinteCincoCentavos = 25
    case CinquentaCentavos = 50


    static func contaMoedas(_ moedas: [Self]) -> Int {
        var soma = 0
        for valor in moedas {
            soma += valor.rawValue
        }
        return soma
    }
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]

let total = Moeda.contaMoedas(moedas)
print("O valor total é: \(total) centavos")
