// PARTE 1 - QUESTÃO 1
// Definição das três notas dos alunos
let notaAluno1: Double = 7.5
let notaAluno2: Double = 8.0
let notaAluno3: Double = 6.8

print("--- Notas dos Alunos ---")
print("Aluno 1: \(notaAluno1)")
print("Aluno 2: \(notaAluno2)")
print("Aluno 3: \(notaAluno3)")

// Cálculo da Média
let somaDasNotas = notaAluno1 + notaAluno2 + notaAluno3
let numeroDeNotas = 3.0 // Usamos 3.0 para manter o tipo Double na divisão
let mediaDasNotas = somaDasNotas / numeroDeNotas

// Resultado
print("\n--- Resultado do Cálculo ---")
print("A soma das notas é: \(somaDasNotas)")
print("A média das três notas é: \(mediaDasNotas)")
print("--------------------------")