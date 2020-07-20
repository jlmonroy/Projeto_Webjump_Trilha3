Dado('que eu acesso a minha conta') do
  visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay9jdXN0b21lci9hY2NvdW50L2xvZ291dFN1Y2Nlc3Mv/'
  
  find('#email').set 'roni_cost@example.com'
  find('#pass').set 'roni_cost3@example.com'
  click_button "Sign In"
  assert_text('My Account', wait:10)
end

Dado('realizo a busca do produto {string} e adiciono ao produto o carrinho') do |string|
  find(:xpath, "//input[@id='search']").set "backpack"
  find(:xpath, "//input[@id='search']").send_keys :enter
  expect(page).to have_content 'backpack'
  first(:xpath, "//img[@class='product-image-photo']").click
  expect(page).to have_content 'Driven Backpack'
  click_button "Add to Cart"
  expect(page).to have_content 'You added'
  find(:xpath, "//span[@class='counter qty']").click
  assert_text('Proceed to Checkout', wait:10)
  assert_text('View and Edit Cart', wait:10)
  find(:xpath, "//button[@class='action primary checkout']").click

end

Dado('prossigo para o checkout e preencho o formulario de entrega') do
  find(:xpath, "//input[@name='street[0]']").set "Rua Jaime Taveira, 91"
  find(:xpath, "//input[@name='street[1]']").set "Apto 23B"
  find(:xpath, "//input[@name='street[2]']").set "Chacara Cruzeiro do Sul"
  find(:xpath, "//input[@name='city']").set "São Paulo"
  find(:xpath, "//input[@name='postcode']").set "03732-060"
  select "Brazil", :from => "country_id"
  select "São Paulo", :from => "region_id"
  find(:xpath, "//input[@name='telephone']").set "(11) 976160727"
  sleep 3
  click_button "Next"
end

Quando('realizo o pagamento') do
  assert_text('Place Order', wait:10)
  find(:xpath, "//button[@class='action primary checkout']").click
end

Então('eu fecho o pedido com sucesso') do
  assert_text('Thank you for your purchase', wait:10)
end
