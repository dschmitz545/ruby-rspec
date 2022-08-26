Feature: Saque no Caixa Eletrônico
    Given um cliente que é correntista do Ninja Bank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitam débito ou crédito.

Scenario: Saque em conta corrente
    Given que eu tenho R$ 1000 em minha conta corrente
    When faço um saque de R$ 200
    Then meu saldo final deve ser R$ 800

Scenario: Deu ruim não tenho saldo
    Given que eu tenho R$ 0 em minha conta corrente
    When faço um saque de R$ 100
    Then vejo a mensagem "Saldo insuficiente para saque :("
    And meu saldo final deve ser R$ 0

Scenario: Tenho saldo mas não o suficiente
    Given que eu tenho R$ 500 em minha conta corrente
    When faço um saque de R$ 501
    Then vejo a mensagem "Saldo insuficiente para saque :("
    And meu saldo final deve ser R$ 500

Scenario: Limite por saque :(
    Given que eu tenho R$ 1000 em minha conta corrente
    When faço um saque de R$ 701
    Then vejo a mensagem "Limite máximo por saque é de R$ 700"
    And meu saldo final deve ser R$ 1000