import Foundation

// =======================================================
// QUESTÃO 6.1: Função para Calcular a Média de um Array de Notas
// =======================================================

func calcularMedia(notas: [Double]) -> Double {
    // Verifica se há notas no array
    if notas.isEmpty {
        return 0.0
    }
    
    let somaTotal = notas.reduce(0.0, +)
    
    let contagemNotas = Double(notas.count)
    
    let media = somaTotal / contagemNotas
    return media
}

// Testes

// Aluno A
let notasAlunoA: [Double] = [7.5, 8.0, 6.2, 9.5]

// Aluno B
let notasAlunoB: [Double] = [5.0, 4.0, 7.0]

// Aluno C (array vazio)
let notasAlunoC: [Double] = []

// média do Aluno A
let mediaA = calcularMedia(notas: notasAlunoA)
print("--- Cálculo de Médias ---")
print("Notas do Aluno A: \(notasAlunoA)")
print("Média do Aluno A: \(String(format: "%.2f", mediaA))") 

// média do Aluno B
let mediaB = calcularMedia(notas: notasAlunoB)
print("\nNotas do Aluno B: \(notasAlunoB)")
print("Média do Aluno B: \(String(format: "%.2f", mediaB))")

// média do Aluno C (array vazio)
let mediaC = calcularMedia(notas: notasAlunoC)
print("\nNotas do Aluno C: \(notasAlunoC)")
print("Média do Aluno C: \(String(format: "%.2f", mediaC))") 

