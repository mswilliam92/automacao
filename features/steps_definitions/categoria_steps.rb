
Dado('abro o menu cadastros') do
  menu.abrirMenu
  menu.abrirCadastros
end

Quando('adiciono uma nova categoria') do
  categoria.abrirCategorias
  categoria.addCategoria
end

Então('categoria e cadastradas com sucesso') do
  categoria.inforCategoria
  esconder_teclado()
  categoria.clicarSalvar
  expect(categoria.toast_categoria.text).to eql "Categoria cadastrada com sucesso."
  printar_step()
end

Quando('seleciono um categoria para alterar') do
  categoria.abrirCategorias
  categoria.escolherCategoria
end

Quando('altero os dados') do
  categoria.editarInformacoesCategoria
end

Então('categoria é alterada com sucesso') do
  categoria.clicarSalvar
  expect(categoria.toast_categoria.text).to eql "Categoria alterada com sucesso."
end

Dado('seleciono uma categoria para excluir') do
  categoria.abrirCategorias
  categoria.escolherCategoriaExcluir
end

Quando('clico no icone de lixeira') do
  categoria.excluirCategoria
end

Então('categoria e excluida com sucesso') do
  expect(categoria.toast_categoria.text).to eql "Categoria excluída com sucesso."
end