Dado('Que eu acesso a página principal') do
    visit 'https://magento.nublue.co.uk/'
end

Dado('Que eu acesso a página de cadastro') do
    find('a', :text=>"Create an Account").click
end

Quando('Eu preencher as informações pessoais com {string} e {string}') do |arg1, arg2|
    find('#firstname').set arg1
    find('#lastname').set arg2
end
  
Quando('Eu preencher os dados de Login') do
    $email = "#{Time.now.strftime('%b%d')}.#{Time.now.strftime('%H.%M.s%S')}@mailinator.com"
    find('#email_address').set $email
    find('#password').set 'Teste@246212'
    find('#password-confirmation').set 'Teste@246212'
    find('.action.submit.primary').click
end
  
Então('Eu esteja na página de Minha Conta') do
    expect(page).to have_content $email
end
