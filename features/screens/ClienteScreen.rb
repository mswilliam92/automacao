class ClienteScreen
    include ::RSpec::Matchers
    include Utils

    #objetos - mapeie coloque aqui os objetos que serão manipulados

    def btn_cliente
        return localizar(:id, "br.com.netpos.smartpos.devel:id/btManagerCustomer")
    end

    def btn_add_cliente
        return localizar(:id, "br.com.netpos.smartpos.devel:id/fabAdd")
    end

    def txt_nome_cliente
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edName")
    end

    def txt_apelido_fantasia
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edFantasy")
    end

    def txt_cpf_cnpj
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edCPF")
    end

    def txt_email
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edEmail")
    end

    def txt_telefone
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edPhone")
    end

    def txt_celular
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edMobilePhone")
    end

    #aniverssario_calendario

    def txt_rg_ie
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edRgIe")
    end

    def txt_valor_maximo
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edCustomerLimit")
    end

    def txt_observações
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edObservation")
    end

    def txt_cep
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edCep")
    end

    def txt_buscar_cep
        return localizar(:id, "br.com.netpos.smartpos.devel:id/btSearchCep")
    end

    def txt_numero
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edNumber")
    end

    def txt_complemento
        return localizar(:id, "br.com.netpos.smartpos.devel:id/edComplement")
    end

    def opc_isento_icms
        return localizar(:id, "br.com.netpos.smartpos.devel:id/cbICMS")
    end

    def opc_simples_nacional
        return localizar(:id, "br.com.netpos.smartpos.devel:id/cbEhSimple")
    end
    
    def btn_salvar
        return localizar(:id, "br.com.netpos.smartpos.devel:id/action_save")
    end
    
    def toast_cliente
        return localizar(:xpath, "//android.widget.Toast")
    end

    def txt_escolher_cliente
        return localizar(:id, "br.com.netpos.smartpos.devel:id/tv_order_customer_name")
    end

    def opc_mais_informacoes
        return localizar(:id, "br.com.netpos.smartpos.devel:id/tvMoreInformations")
    end

    ##################################################################################################

    #metodos - criei os metodos que frão as ções utilizando seus objetos mapeados acima

    def abrirCliente
        esperar(btn_cliente)
        tap(btn_cliente)
    end

    def adicionarCliente
        esperar(btn_add_cliente)
        tap(btn_add_cliente)
    end

    def informacoesCliente
        esperar(txt_nome_cliente)
        tap(txt_nome_cliente)
        escrever(txt_nome_cliente, "Cliente Automacao")
        tap(txt_cpf_cnpj)
        escrever(txt_cpf_cnpj,"38982687807")
        tap(txt_email)
        escrever(txt_email,"teste_automacao@mock.com")
        tap(txt_telefone)
        escrever(txt_telefone,"19999999999")
    end

    def clicarSalvar
        esperar(btn_salvar)
        tap(btn_salvar)
    end

    def selecionarCliente
        esperar(txt_escolher_cliente)
        tap(txt_escolher_cliente)
    end

    def editarCliente
        esperar(txt_nome_cliente)
        tap(txt_nome_cliente)
        escrever(txt_nome_cliente, "Cliente Edicao")
        tap(txt_cpf_cnpj)
        escrever(txt_cpf_cnpj,"13979278000102")
        tap(opc_mais_informacoes)
        scrollBaixoParaCima(:xpath, "//android.widget.ScrollView[@index='0']",0.50,0.81,0.50,0.35,900)
        
    end
end

        