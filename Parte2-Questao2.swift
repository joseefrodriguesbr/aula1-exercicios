// =======================================================
// PARTE 2 - QUESTÃO 2: Validação de Idade e Documento com in put do usuário
// =======================================================

let idadeMinima: Int = 18
var idadePessoa: Int = 0
var possuiDocumento: Bool = false

print("--- Sistema de Validação de Acesso ---")

// Leitura da Idade
print("Por favor, digite a sua idade:")
if let inputIdade = readLine(), let idadeConvertida = Int(inputIdade) {
    idadePessoa = idadeConvertida
} else {
    print("Erro: Idade inválida inserida. Usando idade 0 por padrão.")
}

// Leitura do Documento
print("Você possui um documento de identificação válido? (Digite 'sim' ou 'não'):")
if let inputDocumento = readLine() {
    possuiDocumento = (inputDocumento.lowercased() == "sim")
}

// Estrutura de Decisão para Acesso
var mensagemAcesso: String = ""

// Acesso liberado SÓ SE: (Idade >= 18) E (Possui Documento == true)
if idadePessoa >= idadeMinima && possuiDocumento {
    mensagemAcesso = "Acesso liberado"
} else {
    if idadePessoa < idadeMinima {
        mensagemAcesso = "Acesso negado. Motivo: Idade inferior a \(idadeMinima) anos."
    } else {
        mensagemAcesso = "Acesso negado. Motivo: Documento de identificação não apresentado."
    }
}

// 4. Saída personalizada
print("\n--- Resultado da Validação ---")
print("Idade Informada: \(idadePessoa) anos")
print("Documento Apresentado: \(possuiDocumento ? "Sim" : "Não")")
print("STATUS: \(mensagemAcesso)")
