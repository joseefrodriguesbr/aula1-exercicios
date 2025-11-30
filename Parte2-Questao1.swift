// =======================================================
// PARTE 2 - QUESTÃO 1: Classificação de Idade
// Usa estruturas de decisão (if, else if, else)
// =======================================================

let idade: Int = 17 

// Variável para armazenar a categoria (o resultado da classificação)
var categoria: String = ""

if idade >= 0 && idade <= 13 {
    categoria = "Criança"
} else if idade > 13 && idade <= 18 {
    categoria = "Adolescente"
} else if idade > 18 {
    categoria = "Adulto"
} else {
    // Caso a idade seja um valor negativo ou inválido
    categoria = "Idade inválida"
}

// Saída
print("\n--- Classificação de Idade ---")
print("Idade inserida: \(idade) anos")
print("O usuário é classificado como: \(categoria)")
