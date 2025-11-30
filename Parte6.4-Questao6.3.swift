import Foundation

// =======================================================
// QUESTÃO 6.3: Filtrar Estados com Nomes Maiores que 7 Caracteres
// =======================================================

// Dicionário (Dictionary) com a sigla como chave e nome como valor.

let estadosBrasileiros: [String: String] = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo",
    "GO": "Goiás",
    "MA": "Maranhão",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Pará",
    "PB": "Paraíba",
    "PR": "Paraná",
    "PE": "Pernambuco",
    "PI": "Piauí",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondônia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]


func exibirEstadosComNomeLongo(dicionarioEstados: [String: String]) {
    let tamanhoMinimo = 7
    print("--- Estados com nome maior que \(tamanhoMinimo) caracteres ---")
    
    for (sigla, nome) in dicionarioEstados {
        if nome.count > tamanhoMinimo {
            print("\(sigla): \(nome)")
        }
    }
}

// Teste

exibirEstadosComNomeLongo(dicionarioEstados: estadosBrasileiros)