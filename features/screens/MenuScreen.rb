class MenuScreen
    include ::RSpec::Matchers
    include Utils

    #objetos - mapeie coloque aqui os objetos que serão manipulados

    def btn_Menu
        return localizar(:xpath,"//android.widget.ImageButton[@content-desc='Open Navigation']")
    end

    def btn_Catalogo
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Catálogo']")
    end

    def btn_Cadastros
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Cadastros']")
    end

    def btn_Pedidos
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Pedidos em aberto']")
    end

    def btn_Consultar_Vendas
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Consultar vendas']")
    end

    def btn_Consultar_Devoluções 
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Consultar devoluções']")
    end 

    def btn_Consultar_Estoque
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Consultar estoque']")
    end

    def btn_Relatorios
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Relatórios']")
    end

    def btn_Relatorios_Consolidados
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Relatórios consolidados']")
    end

    def btn_Controle_Caixa
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Controle de caixa']")
    end

    def btn_Fiado
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Fiado']")
    end

    def btn_Financeiro
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Financeiro']")
    end

    def btn_Administrativo
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Administrativo']")
    end 

    def btn_Configurações
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Configurações']")
    end

    def btn_Ajuda
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Ajuda']")
    end

    def btn_Logout
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='Logout']")
    end
    
    def btn_Entre_Contato
        return localizar(:xpath,"//android.widget.CheckedTextView[@text='ENTRE EM CONTATO']")
    end
        

    

    ###################################################################################################

    #metodos - criei os metodos que frão as ções utilizando seus objetos mapeados acima

    def abrirMenu
        esperar(btn_Menu)
        tap(btn_Menu)
    end

    def abrirCatalogo
        esperar(btn_Catalogo)
        tap(btn_Catalogo)
    end

    def abrirCadastros
        esperar(btn_Cadastros)
        tap(btn_Cadastros)
    end

end