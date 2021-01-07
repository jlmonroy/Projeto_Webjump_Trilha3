Dado('que eu acesso a minha conta') do
  @access.access_count
end

Dado('realizo a busca do produto {string} e adiciono ao produto o carrinho') do |produto|
  @navigation.search_product(produto)
end

Dado('prossigo para o checkout e preencho o formulario de entrega') do
  @checkout.shipping_adress_acount
end

Dado('prossigo para o pagamento') do
  @checkout.cart
end

Quando('realizo o pagamento') do
  @payment.finish_payment
end

Então('eu fecho o pedido com sucesso') do
  @payment.confirm
end
