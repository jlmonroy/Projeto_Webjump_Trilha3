#language:pt
  @Usuario
    Funcionalidade: Criar usuário da plataforma

      Cenario: Criando usuario

        Dado Que eu acesso a página principal
        Dado Que eu acesso a página de cadastro
        Quando Eu preencher as informações pessoais com 'Jeferson' e 'Monroy'
        Quando Eu preencher os dados de Login
        Então Eu esteja na página de Minha Conta
    