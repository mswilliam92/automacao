#isto é uma page onde serão colocados os objetos e metodos de uma feature

class LoginScreen
    include ::RSpec::Matchers
    include Utils
    
    #objetos - mapeie coloque aqui os objetos que serão manipulados

    def opc_Entrar
        return localizar(:id, "br.com.netpos.smartpos.devel:id/btActivityNewIntroSignIn")
    end

    def campo_email
        return localizar(:id, "br.com.netpos.smartpos.devel:id/et_new_login_email")
    end

    def campo_senha
        return localizar(:id, "br.com.netpos.smartpos.devel:id/et_new_login_password")
    end

    def btn_entrar
        return localizar(:id, "br.com.netpos.smartpos.devel:id/bt_new_login_sign_in")
    end

    def msg_inicializacao
        return localizar(:id, "br.com.netpos.smartpos.devel:id/alertTitle")
    end

    def btn_ja_conheco
        return localizar(:id, "android:id/button3")
    end

    def btn_vamosla
        return localizar(:id, "android:id/button1")
    end
    
    def msg_email_senha_invalidos
        return localizar(:id, "android:id/message")
    end

    def email_invalido
        return localizar(:uiautomator,'new UiSelector().text("E-mail inválido.")')
    end

    def senha_invalida
        return localizar(:uiautomator,'new UiSelector().text("Senha inválida.")')
    end

    
    ###################################################################################################

    #metodos - criei os metodos que frão as ções utilizando seus objetos mapeados acima

    def opcEntrar
        esperar(opc_Entrar)
        tap(opc_Entrar)
    end

    def preencherEmail(email)
        esperar(campo_email)
        tap(campo_email)
        escrever(campo_email, email)
    end

    def preecherSenha(senha)
        esperar(campo_senha)
        tap(campo_senha)
        escrever(campo_senha, senha)
        esconder_teclado()
    end

    def entrar
        tap(btn_entrar)
    end

    def jaConheco
        esperar(btn_ja_conheco)
        tap(btn_ja_conheco)
    end



    






end