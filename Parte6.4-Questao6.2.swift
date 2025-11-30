import Foundation

// =======================================================
// QUESTÃO 6.2: Gerar 10 Números, Separar em Conjuntos (Sets) Pares e Ímpares
// =======================================================

// Array para 10 números inteiros aleatórios
var todosOsNumeros: [Int] = []

// Criação dos conjuntos (Sets) que armazenarão os números separados
var numerosPares: Set<Int> = []
var numerosImpares: Set<Int> = []


let quantidadeNumeros = 10
let limiteInferior = 1
let limiteSuperior = 50 // Usando um limite para ter uma variedade de números

print("--- Geração e Separação de Números ---")
print("Geração de \(quantidadeNumeros) números aleatórios entre \(limiteInferior) e \(limiteSuperior).")

for _ in 1...quantidadeNumeros {
    // Gera um número inteiro aleatório
    let numeroAleatorio = Int.random(in: limiteInferior...limiteSuperior)
    
    // Armazena no array principal
    todosOsNumeros.append(numeroAleatorio)
    
    // Verifica par ou ímpar e armazena no Set correspondente
    if numeroAleatorio % 2 == 0 {
        numerosPares.insert(numeroAleatorio)
    } else {
        numerosImpares.insert(numeroAleatorio)
    }
}

// Testes

print("\n1. Todos os Números Gerados (Array):")
print(todosOsNumeros)

print("\n2. Conjunto de Números Pares (Set):")

// Ordenação para saída
print(numerosPares.sorted())

print("\n3. Conjunto de Números Ímpares (Set):")
print(numerosImpares.sorted())

