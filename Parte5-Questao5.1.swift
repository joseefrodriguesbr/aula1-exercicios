import Foundation

// =======================================================
// QUESTÃO 5.1: Função para Tratar um Parâmetro Opcional (Nome)
// =======================================================

// Recebe um nome opcional e trata o valor: exibe o nome se presente,
// ou uma mensagem padrão se for nulo.

func exibirNome(nome: String?) {
    print("--- Verificando Nome ---")
    

    if let nomeReal = nome {
        print("Nome encontrado: \(nomeReal)")
    } else {
        print("Nome não especificado")
    }
    
    print("------------------------")
}

// Teste de uso

// Chamada com um valor
exibirNome(nome: "Maria Silva")

// Chamada com valor nulo (nil)
exibirNome(nome: nil)

// Chamada com uma variável opcional  vazia
let nomeVazio: String? = nil
exibirNome(nome: nomeVazio)

// Chamada com uma variável opcional com valor
let nomePreenchido: String? = "João de Souza"
exibirNome(nome: nomePreenchido)