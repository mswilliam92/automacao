#language: pt
#encoding: utf-8

#isto é sua feature que sera automatizada para cada linha ou step sera criado um metodo na page para executar esta ação.

@login
Funcionalidade: Fluxos de login

    @loginInvalido
    Cenario: Email ou Senha Invalidos
        Dado que estou na tela de login do app
        Quando informo email "automacao1@boximail.com" e senha "a12345"
        E clico no botão entrar
        Então é apresentada a mensagem, email ou senha invalidos

    @emailInvalido
    Cenario: Email Errado
        Dado que estou na tela de login do app
        Quando informo email "automacao@boximail" e senha "a123456"
        E clico no botão entrar
        Então é apresentada a mensagem, email invalido

    @senhaInvalida
    Cenario: Senha em Branco
        Dado que estou na tela de login do app
        Quando informo email "automacao@boximail.com" e senha ""
        E clico no botão entrar
        Então é apresentada a mensagem, senha invalida

    @loginSucesso
    Cenario: Login Sucesso
        Dado que estou na tela de login do app
        Quando informo email "automacao@boximail.com" e senha "a123456"
        E clico no botão entrar
        Então é apresentada a tela de inicialização