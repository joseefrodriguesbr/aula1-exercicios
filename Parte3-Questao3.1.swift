// =======================================================
// PARTE 3 - QUESTÃO 3.1: Imprimir Números Pares de 1 a 10
// Usa estrutura de repetição (for loop) e módulo (%).
// =======================================================

print("\n--- Imprimindo Números Pares de 1 a 10 ---")
print("Números Pares:")

for numero in 1...10 {
    if numero % 2 == 0 {
        print(numero)
    }
}
