#language: pt
# encoding: utf-8

@Cliente
Funcionalidade: Cadastro, exclusao e edição de um Cliente

Contexto:
        Dado que estou logado no app
        E abro o menu cadastros

    @cadastroCliente
    Cenario: Cadastrar cliente
        Quando adiciono um novo cliente
        E preencho as informações de cadastros
        Então o cliente é cadastrado com sucesso

    @edicaoCliente
    Cenario: Editar cliente 
        E seleciono um cliente para alterar
        E edito algumas informações desse cliente
        Então o cadastro do cliente é alterado com sucesso

    @exclusaoCliente
    Cenario: Excluir cliente
        E seleciono um cliente para excluir
        E clico no icone de lixeira 
        E clico no botão Sim
        Então o cliente é excluido com sucesso