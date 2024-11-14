struct Restaurante {
    var nome: String
    var tipoComida: String
    var numeroPedidos: Int = 0
    
    mutating func recebePedido() {
        self.numeroPedidos += 1
        print("Pedido adicionado. Total de Pedidos Atual: \(numeroPedidos)")
    }
    
    func valorTotalDePedidos() -> Double {
        let total = Double(self.numeroPedidos) * 35.00
        print("Valor total de Pedidos: \(total)")
        return total
    }
}

var restaurante = Restaurante(nome: "Restaurante XPTO", tipoComida: "Mineira")

restaurante.recebePedido()
restaurante.recebePedido()
restaurante.recebePedido()
restaurante.valorTotalDePedidos()
