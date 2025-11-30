import Foundation

// =======================================================
// QUESTÃO 8.4: Herança/Polimorfismo em swift
// =======================================================


//Classe Pai (Superclass): Empregado
class Empregado {
    // 1. Atributos da classe Empregado
    let nome: String
    let salario: Double
    
    // Construtor (Initializer) da classe pai
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
    
    // Método simples para exibir as informações do empregado
    func exibirInfo() {
        print("Nome: \(nome)")
        print("Salário Base: R$\(String(format: "%.2f", salario))")
    }
}

//Classe Filha (Subclass): Gerente
class Gerente: Empregado {
    let departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento        
        super.init(nome: nome, salario: salario)
    }
    
    // Sobrescreve (override) o método da classe pai para incluir a informação do departamento
    override func exibirInfo() {
        super.exibirInfo() 
        print("Departamento: \(departamento)")
        print("Cargo: Gerente")
    }
}

// Classe Filha (Subclass): Vendedor
class Vendedor: Empregado {
    // constantes para os cálculos de comissão
    let valorFixoPorVenda: Double = 50.00
    let taxaComissao: Double = 0.10 // 10%

    // Calcula o valor total a receber pelo vendedor, incluindo o salário base
    // e a comissão baseada nas vendas realizadas.

    func percentualComissao(numeroDeVendas: Int) -> Double {
        // total das vendas
        let valorTotalVendas = Double(numeroDeVendas) * valorFixoPorVenda
        
        // valor da comissão (10% sobre o valor total das vendas)
        let valorComissao = valorTotalVendas * taxaComissao
        
        // salário final (Salário base + Comissão)
        let salarioFinal = self.salario + valorComissao
        
        return salarioFinal
    }
    
    // Sobrescreve (override) o método da classe pai para indicar o cargo
    override func exibirInfo() {
        super.exibirInfo() 
        print("Cargo: Vendedor")
    }
}

// Testes
print("--- Teste de Herança em Swift ---")

// Instancia um objeto da classe Empregado
let empregadoComum = Empregado(nome: "Ana Souza", salario: 3000.00)
print("\n[Detalhes do Empregado Comum]")
empregadoComum.exibirInfo()

// Instancia um objeto da classe Gerente
let novoGerente = Gerente(nome: "Carlos Ferreira", salario: 8500.00, departamento: "Vendas")
print("\n[Detalhes do Gerente]")
novoGerente.exibirInfo()

// Instancia um objeto da classe Vendedor
let novoVendedor = Vendedor(nome: "Bia Santos", salario: 2500.00)
let vendasRealizadas = 15 // O vendedor realizou 15 vendas

// método de comissão
let salarioComComissao = novoVendedor.percentualComissao(numeroDeVendas: vendasRealizadas)

print("\n[Detalhes do Vendedor]")
novoVendedor.exibirInfo()
print("Vendas Realizadas: \(vendasRealizadas)")
print("Salário Final (Base + Comissão): R$\(String(format: "%.2f", salarioComComissao))")

