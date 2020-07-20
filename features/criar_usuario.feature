#language:pt
@Usuario
Funcionalidade: Criar usuário da plataforma

    Cenario: Criando usuario

        Dado Que eu acesso a página principal
        Dado Que eu acesso a página de cadastro
        Quando Eu preencher as informações pessoais com 'Jeferson' e 'Monroy'
        Quando Eu preencher os dados de Login com 'jlmonroy24@gmail.com' e 'Teste@246212' e 'Teste@246212'
        Então Eu esteja na página de Minha Conta
    