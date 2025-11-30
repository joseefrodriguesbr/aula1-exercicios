import Foundation

// =======================================================
// QUESTÃO 4.2: Função para Calcular a Divisão da Conta
// =======================================================

// Calcula o valor que cada pessoa deve pagar após adicionar a taxa de serviço (10%


//   - valorTotalConta: O valor total gasto no restaurante (excluindo a gorjeta).
//   - numeroTotalPessoas: O número de pessoas que irão dividir a conta 
//   - Returns: O valor que cada pessoa deve pagar
func calcularValorPorPessoa(valorTotalConta: Double, numeroTotalPessoas: Int) -> Double {
    // gorjeta é 10% do valor total
    let gorjeta = valorTotalConta * 0.10
    
    // total é o valor da conta mais a gorjeta.
    let totalComGorjeta = valorTotalConta + gorjeta
    
    guard numeroTotalPessoas > 0 else {
        print("Erro: O número de pessoas deve ser maior que zero.")
        return 0.0
    }
    
    // valor que cada pessoa deve pagar
    let valorPorPessoa = totalComGorjeta / Double(numeroTotalPessoas)
    
    return valorPorPessoa
}

// Exemplo de utilização

let valorDaConta: Double = 150.75 // Valor total 
let pessoasParaDividir: Int = 4  // Número total de pessoas

// Chamada da função 
let valorFinalPorPessoa = calcularValorPorPessoa(
    valorTotalConta: valorDaConta, 
    numeroTotalPessoas: pessoasParaDividir
)

// resultado
print("--- Divisão da Conta do Restaurante ---")
print("Valor da Conta (sem 10%): \(String(format: "%.2f", valorDaConta))")

// total com gorjeta
let gorjetaCalculada = valorDaConta * 0.10
let totalGeral = valorDaConta + gorjetaCalculada
print("Gorjeta (10%): \(String(format: "%.2f", gorjetaCalculada))")
print("Total Geral (com 10%): \(String(format: "%.2f", totalGeral))")
print("Pessoas na mesa: \(pessoasParaDividir)")

// valor que cada pessoa deve pagar
print("\nCada pessoa deve pagar: \(String(format: "%.2f", valorFinalPorPessoa))")
