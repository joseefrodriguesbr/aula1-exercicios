import Foundation

// =======================================================
// QUESTÃO 8.2: Classe Restaurante com Pedidos
// =======================================================

class Restaurante {
    let nome: String          // O nome do restaurante.
    let tipoComida: String    // O tipo de cozinha (ex: "Italiana", "Japonesa").
    
    var numeroDePedidos: Int  // Número de pedidos feitos até o momento.

    // Valor fixo de cada pedido, usado no método calculaTotalPedidos()
    let valorPedidoFixo: Double = 35.00 

    init(nome: String, tipoComida: String) {
        self.nome = nome
        self.tipoComida = tipoComida
        self.numeroDePedidos = 0
    }
    
    /// Acrescenta 1 ao contador total de pedidos.
    func recebePedido() {
        self.numeroDePedidos += 1
        print("? Pedido recebido! Total atual: \(self.numeroDePedidos)")
    }
    
    // Calcula e retorna o valor total em pedidos, assumindo um valor fixo por pedido.
    func calculaTotalPedidos() -> Double {
        let total = Double(self.numeroDePedidos) * valorPedidoFixo
        return total
    }
}

// Testes

// Instancia a classe Restaurante
let meuRestaurante = Restaurante(nome: "Tempero do norte", tipoComida: "Caseira")

print("--- Simulação de Pedidos ---")
print("Restaurante: \(meuRestaurante.nome) (\(meuRestaurante.tipoComida))")
print("Valor fixo por pedido: R$\(String(format: "%.2f", meuRestaurante.valorPedidoFixo))")

// Chama o método recebePedido() algumas vezes
meuRestaurante.recebePedido() // 1º pedido
meuRestaurante.recebePedido() // 2º pedido
meuRestaurante.recebePedido() // 3º pedido

//Chama o método calculaTotalPedidos()
let valorFaturado = meuRestaurante.calculaTotalPedidos()

// Resultado no console
print("\n--- Fechamento de Caixa ---")
print("Número final de pedidos: \(meuRestaurante.numeroDePedidos)")
print("Valor total faturado: R$\(String(format: "%.2f", valorFaturado))")
