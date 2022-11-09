class CategoriaScreen
    include ::RSpec::Matchers
    include Utils

    #objetos - mapeie coloque aqui os objetos que serão manipulados
    
    def btn_categoria
        return localizar(:id, "br.com.netpos.smartpos.devel:id/btManagerCategory")
    end

    def btn_add
        return localizar(:id, "br.com.netpos.smartpos.devel:id/fabAdd")
    end

    def txt_nome_categoria
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edCategoryName")
    end

    def btn_exibir_catalogo
        return localizar(:id, "br.com.netpos.smartpos.devel:id/switchCatalog")
    end

    def btn_salvar
        return localizar(:id, "br.com.netpos.smartpos.devel:id/action_save")
    end

    def selecionar_categoria
        return localizar(:xpath, "//android.widget.TextView[@text='Categoria Automacao']")
    end

    def selecionar_categoria_excluir
        return localizar(:xpath, "//android.widget.TextView[@text='Categoria Editada']")
    end

    def toast_categoria
        return localizar(:xpath, "//android.widget.Toast")
    end

    def mais_opc
        return localizar(:xpath,"//android.widget.ImageView[@content-desc='Mais opções']")
    end

    def excluir_categoria
        return localizar(:xpath, "//android.widget.TextView[@text='Excluir categoria']")
    end

    def apagar_categoria_true
        return localizar(:id,"android:id/button1")
    end
    
    ###################################################################################################
    
    #metodos - criei os metodos que frão as ções utilizando seus objetos mapeados acima
    def abrirCategorias
        esperar(btn_categoria)
        tap(btn_categoria)
    end

    def addCategoria
        esperar(btn_add)
        tap(btn_add)
    end

    def inforCategoria
        esperar(txt_nome_categoria)
        tap(txt_nome_categoria)
        escrever(txt_nome_categoria,"Categoria Automacao")
        tap(btn_exibir_catalogo)
    end

    def escolherCategoria
        esperar(selecionar_categoria)
        tap(selecionar_categoria)
    end

    def editarInformacoesCategoria
        esperar(txt_nome_categoria)
        escrever(txt_nome_categoria, "Categoria Editada")
        tap(btn_exibir_catalogo)
    end

    def edicaoSucesso
        esperar(toast_categoria)
    end
    
    def escolherCategoriaExcluir
        esperar(selecionar_categoria_excluir)
        tap(selecionar_categoria_excluir)
    end

    def excluirCategoria
        esperar(mais_opc)
        tap(mais_opc)
        esperar(excluir_categoria)
        tap(excluir_categoria)
        esperar(apagar_categoria_true)
        tap(apagar_categoria_true)
    end

    def clicarSalvar
        esperar(btn_salvar)
        tap(btn_salvar)
    end
end