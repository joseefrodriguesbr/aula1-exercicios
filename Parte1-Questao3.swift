// =======================================================
// QUESTÃO 3: Cálculo de Volume e Verificação de Tamanho
// Fórmula: Volume = Largura * Altura * Profundidade
// =======================================================

let largura: Double = 15.0 // Largura em cm
let altura: Double = 23.0  // Altura em cm
let profundidade: Double = 5.0 // Profundidade  em cm

let volume: Double = largura * altura * profundidade

// Verificação de volume > 1000
let isVolumeMaiorQueMil: Bool = volume > 1000

// Saída
print("\n--- Cálculo do Volume do Livro ---")
print("Dimensões (L x A x P): \(largura) x \(altura) x \(profundidade) cm")
print("O volume calculado é: \(volume) cm³")

// Exibe se o volume é maior que 1000 usando a variável booleana
print("O volume é maior que 1000 cm³? \(isVolumeMaiorQueMil)")

// Exibe o tipo da variável que armazenou o volume
print("O tipo da variável 'volume' é: \(type(of: volume))")
