#language:pt
@checkout
Funcionalidade: Realizar fluxo de compra até o checkout

  Cenario: Fluxo de compra
    Dado que eu acesso a minha conta
    E realizo a busca do produto 'backpack' e adiciono ao produto o carrinho
    E prossigo para o checkout e preencho o formulario de entrega
    Quando realizo o pagamento
    Então eu fecho o pedido com sucesso
