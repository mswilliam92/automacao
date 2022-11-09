#language: pt
#encoding: utf-8

@Categoria
Funcionalidade: Cadastro, exclusao e edição de uma Categoria
       
    @cadastroCategoria
    Cenario: Cadastrar categoria
        Dado que estou logado no app
        E abro o menu cadastros
        Quando adiciono uma nova categoria
        Então categoria e cadastradas com sucesso

    @edicaoCategoria   
    Cenario: Editar categoria 
        Dado que estou logado no app
        E abro o menu cadastros
        Quando seleciono um categoria para alterar
        E altero os dados 
        Então categoria é alterada com sucesso

    @exclusaoCategoria
    Cenario: Excluir categoria
        Dado que estou logado no app
        E abro o menu cadastros
        E seleciono uma categoria para excluir
        Quando clico no icone de lixeira
        Então categoria e excluida com sucesso


    #@exclusaoCategoriaComProduto
    #@arquivarCategoria
    #@desarquivarCategoria
    #@filtrarCategoria       

