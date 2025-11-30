import Foundation

// =======================================================
// QUESTÃO 8.1: Classe/Struct Calculadora
// =======================================================

struct Calculadora {
    let numero1: Double
    let numero2: Double
    
    init(num1: Double, num2: Double) {
        self.numero1 = num1
        self.numero2 = num2
    }
    
    // Adição
    func somar() -> Double {
        return numero1 + numero2
    }
    
    // Subtração
    func subtrair() -> Double {
        return numero1 - numero2
    }
    
    // Multiplicação
    func multiplicar() -> Double {
        return numero1 * numero2
    }
    
    // Divisão
    func dividir() -> Double {
        if numero2 == 0 {
            print("Atenção: Divisão por zero detectada. Retornando 0.")
            return 0.0
        }
        return numero1 / numero2
    }
}

// Testes

// Instancia a struct Calculadora com dois valores decimais
let calculadoraExemplo = Calculadora(num1: 10.5, num2: 4.2)

print("--- Teste da Calculadora Orientada a Objetos ---")
print("Valores usados: \(calculadoraExemplo.numero1) e \(calculadoraExemplo.numero2)")

// Chama e armazena o resultado de cada método
let resultadoSoma = calculadoraExemplo.somar()
let resultadoSubtracao = calculadoraExemplo.subtrair()
let resultadoMultiplicacao = calculadoraExemplo.multiplicar()
let resultadoDivisao = calculadoraExemplo.dividir()

// Resultados no console
print("\nResultados:")
print("Soma (\(calculadoraExemplo.numero1) + \(calculadoraExemplo.numero2)) = \(String(format: "%.2f", resultadoSoma))")
print("Subtração (\(calculadoraExemplo.numero1) - \(calculadoraExemplo.numero2)) = \(String(format: "%.2f", resultadoSubtracao))")
print("Multiplicação (\(calculadoraExemplo.numero1) * \(calculadoraExemplo.numero2)) = \(String(format: "%.2f", resultadoMultiplicacao))")
print("Divisão (\(calculadoraExemplo.numero1) / \(calculadoraExemplo.numero2)) = \(String(format: "%.2f", resultadoDivisao))")

