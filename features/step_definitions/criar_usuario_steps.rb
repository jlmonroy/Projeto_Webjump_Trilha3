Dado('Que eu acesso a página principal') do
  @access.site_access
end

Dado('Que eu acesso a página de cadastro') do
    find(:css,'a', :text=>"Create an Account").click
end

Quando('Eu preencher as informações pessoais com {string} e {string}') do |arg1, arg2|
  @cadastro.insert_name(arg1, arg2)
end
  
Quando('Eu preencher os dados de Login') do
  @cadastro.insert_data
end
  
Então('Eu esteja na página de Minha Conta') do
  @cadastro.result
end
