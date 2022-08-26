require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque no Caixa Eletrônico' do
        context 'quando o valor é positivo' do
            before(:all) do
                @contapoupanca = ContaPoupanca.new(1000.00)
                @contapoupanca.saque(200.00)
            end

            it 'então atualiza saldo, sobrando R$800.00' do
                expect(@contapoupanca.saldo).to eql 800.00
            end

        end

        context 'não tenho saldo' do
            before(:all) do
                @contapoupanca = ContaPoupanca.new(0.00)
                @contapoupanca.saque(101.00)
            end

            it 'então exibe a mensagem "Saldo insuficiente para saque"' do
                expect(@contapoupanca.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'e o saldo final deve ser R$0.00' do
                expect(@contapoupanca.saldo).to eql 0.00

            end
        end

        context 'Tenho saldo mas não o suficiente' do
            before(:all) do
                @contapoupanca = ContaPoupanca.new(500.00)
                @contapoupanca.saque(501.00)
            end

            it 'então exibe a mensagem "Saldo insuficiente para saque"' do
                expect(@contapoupanca.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'e o saldo permanece R$500.00' do
                expect(@contapoupanca.saldo).to eql 500.00

            end
        end

        context 'quando ultrapassa o limite de saque' do
            before(:all) do
                @contapoupanca = ContaPoupanca.new(1000.00)
                @contapoupanca.saque(701.00)
            end

            it 'então exibe mensagem "Limite máximo por saque é de R$500.00"' do
                expect(@contapoupanca.mensagem).to eql 'Limite máximo por saque é de R$ 500.00'
            end
            it 'meu saldo final deve ser R$1000.00' do
                expect(@contapoupanca.saldo).to eql 1000.00

            end
        end

    end

end