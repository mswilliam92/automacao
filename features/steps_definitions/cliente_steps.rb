Quando('adiciono um novo cliente') do
    cliente.abrirCliente
  end
  
  Quando('preencho as informações de cadastros') do
    cliente.adicionarCliente
    cliente.informacoesCliente
  end
  
  Então('o cliente é cadastrado com sucesso') do
    cliente.clicarSalvar
  end

  Dado('seleciono um cliente para alterar') do
    cliente.abrirCliente
    cliente.selecionarCliente
  end
  
  Dado('edito algumas informações desse cliente') do
    cliente.editarCliente
  end
  
  Então('o cadastro do cliente é alterado com sucesso') do
    cliente.clicarSalvar
  end