Projeto de automação da Academia Webjump.

Utilizando-se de ferramentas em ambiente local para o desenvolvimento e execução dos cenários com:

Linux Ubuntu - Versão 18.4.4
VSCode - Versão 1.33.0
Terminal - Versão 3.28.2
Chrome - Versão 83.0.4103.116
Ruby - Versão 2.6.5
Cucumber - Versão 4.1.0
Git - Versão 2.27.0

Criados 2 cenários:
    - Criação de um usuário na plataforma de compra do Magento 2 (Luma).
    - Realização de um pedido com sucesso do login ao checkout.

Instalação Ruby e dependências através dos comandos:

    rvm install ruby (>2.5.0)
    gem install bundler
    add do driver do chrome na gem

Execução dos cenários acima através do terminal com o comando:

    cucumber (execução de todos os cenários)
    cucumber -t @Usuario (execução do cenário 1 através da tag)
    cucumber -t @checkout (execução do cenário 2 através da tag)

Verificação da execução através do relatório.