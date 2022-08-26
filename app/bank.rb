class Conta

    attr_accessor :saldo, :mensagem
    
    def initialize(saldo)
        self.saldo = saldo
    
    end

    def saque(valor, limite)
        if (self.saldo < valor)
    
            self.mensagem = "Saldo insuficiente para saque"
            
        elsif (valor > limite)
            
            self.mensagem = "Limite máximo por saque é de R$ #{format("%.2f",limite)}"
            
        else
            
            self.saldo -= valor
    
        end
       
    end
end

class ContaCorrente < Conta
    def saque(valor, limite = 700.00)
        super
    end

end

class ContaPoupanca <  Conta
    def saque(valor, limite = 500.00)
        super
    end

end