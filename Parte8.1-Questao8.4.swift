import Foundation

// =======================================================
// QUESTÃO 8.4: Herança/Polimorfismo em Swift  
// =======================================================

//Classe Pai (Superclass): Empregado
class Empregado {
    let nome: String
    let salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
    
    func exibirInfo() {
        print("Nome: \(nome)")
        print("Salário: R$\(String(format: "%.2f", salario))")
    }
}

// Classe Filha (Subclass): Gerente
class Gerente: Empregado {
    let departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
    
    // Sobrescreve o método da classe pai para incluir a informação do departamento
    override func exibirInfo() {
        super.exibirInfo() 
        print("Departamento: \(departamento)")
        print("Cargo: Gerente")
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
