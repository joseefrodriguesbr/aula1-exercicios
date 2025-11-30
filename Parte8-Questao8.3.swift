import Foundation

// =======================================================
// QUESTÃO 8.3: Struct Retângulo com Métodos de Cálculo
// =======================================================

struct Retangulo {
    let base: Double
    let altura: Double
    
    init(base: Double, altura: Double) {
        self.base = max(0, base)
        self.altura = max(0, altura)
    }
    
    // retorna a área do retângulo (Base * Altura).
    func calcularArea() -> Double {
        return base * altura
    }
    
    // retorna o perímetro do retângulo (soma de todos os lados: 2 * Base + 2 * Altura).
    func calcularPerimetro() -> Double {
        return (2 * base) + (2 * altura)
    }
}

// Testes

// Instancia a struct Retangulo
let meuRetangulo = Retangulo(base: 8.5, altura: 4.0)

print("--- Cálculo de Área e Perímetro ---")
print("Retângulo com Base: \(meuRetangulo.base) e Altura: \(meuRetangulo.altura)")

// Chama os métodos
let area = meuRetangulo.calcularArea()
let perimetro = meuRetangulo.calcularPerimetro()

// resultados no co0nsole
print("\nResultados:")
print("Área Calculada: \(String(format: "%.2f", area))")
print("Perímetro Calculado: \(String(format: "%.2f", perimetro))")
