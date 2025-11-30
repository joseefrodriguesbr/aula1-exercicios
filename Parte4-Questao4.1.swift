// =======================================================
// QUESTÃO 4.1: Função para Verificar se um Número é Primo
// =======================================================

import Foundation

func isPrime(number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    
    if number == 2 {
        return true
    }
    
    if number % 2 == 0 {
        return false
    }
    
    // Verifica divisores ímpares de 3 até a raiz quadrada do número.
    // Se um número N tem um divisor maior que sua raiz quadrada, ele também deve ter um divisor menor que sua raiz quadrada.
    // Portanto, basta verificar até a raiz quadrada.
    
    let limit = Int(sqrt(Double(number)))
    
    // O loop começa em 3 e incrementa de 2 em 2 (pula os pares, que já foram tratados).
    for i in stride(from: 3, through: limit, by: 2) {
        if number % i == 0 {
            // Se encontraa divisor além de 1 e do próprio número, ele não é primo.
            return false
        }
    }
    
    // Loop terminando sem encontrar divisores, o número é primo.
    return true
}

// Testes
print("--- Testes ---")

let num1 = 17
print("\(num1) é primo? \(isPrime(number: num1))") // Saída: 17 é primo? true

let num2 = 15
print("\(num2) é primo? \(isPrime(number: num2))") // Saída: 15 é primo? false

let num3 = 2
print("\(num3) é primo? \(isPrime(number: num3))") // Saída: 2 é primo? true

let num4 = 1
print("\(num4) é primo? \(isPrime(number: num4))") // Saída: 1 é primo? false

let num5 = 121
print("\(num5) é primo? \(isPrime(number: num5))") // Saída: 121 é primo? false (11 * 11)

let num6 = 199
print("\(num6) é primo? \(isPrime(number: num6))") // Saída: 199 é primo? true