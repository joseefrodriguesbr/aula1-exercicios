// =======================================================
// PARTE 3 - QUESTÃO 3.2: Algoritmo de Adivinhação de Números (1 a 100)
// Usa 'while' loop para repetição e 'readLine()' para entrada do usuário.
// =======================================================

print("\n--- Jogo de Adivinhação de Números ---")
print("Vou pensar num número entre 1 e 100. Tente adivinhar!")

// O número secreto que o usuário deve adivinhar.
let valorInteiro: Int = Int.random(in: 1...100)


var acertou: Bool = false
var tentativas: Int = 0


while !acertou {
    print("\nDigite o seu chute:")

    // Leitura do chute do usuário
    guard let inputChute = readLine(),
          let chute = Int(inputChute),
          chute >= 1 && chute <= 100 else {
        print("Entrada inválida. Por favor, digite um número inteiro entre 1 e 100.")
        continue 
    }

    // Incrementa tentativas
    tentativas += 1

    if chute < valorInteiro {
        print("Chutou baixo! Tente um número maior.")
    } else if chute > valorInteiro {
        print("Chutou alto! Tente um número menor.")
    } else {
        acertou = true
    }
}

// Resultado Final 
print("Acertou! O número secreto era \(valorInteiro).")
print("Você usou \(tentativas) tentativas para descobrir o número.")
