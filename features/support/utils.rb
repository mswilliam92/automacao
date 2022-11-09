module Utils 
    # Métodos genericos para serem usados em qualquer parte do aplicativo
    
    KEYCODE_2 = 9
    KEYCODE_3 = 10
    KEYCODE_4 = 11
    KEYCODE_5 = 12  

    def tap_coordenada(x,y)
        Appium::TouchAction.new.tap(x: x, y: y).perform
    end

    def scrollDireitaParaEsquerda(atributo, identificador, s_x, s_y, o_x, o_y, duration)
        localizar(atributo,identificador)
        coord = { start_x: s_x , start_y: s_y, offset_x: o_x, offset_y: o_y, duration: duration}
        Appium::TouchAction.new.swipe(coord).perform 
        sleep 2
    end

    def scrollBaixoParaCima(atributo, identificador, s_x, s_y, o_x, o_y, duration)
        localizar(atributo,identificador)
        coord = { start_x: s_x , start_y: s_y, offset_x: o_x, offset_y: o_y, duration: duration}
        Appium::TouchAction.new.swipe(coord).perform
    end
    
    def tap(elemento)
        elemento.click
    end
 
    def escrever(elemento,texto)
         elemento.send_keys texto
    end

    def randomico(elemento,intervalo)
        escrever(elemento,rand(intervalo))
    end
 
    def esperar_por
        Selenium::WebDriver::Wait.new(:timeout => 20).until {yield}
    end

    def esperar(elemento)
        $wait.until{elemento}
    end
 
    def duplo_tap(elemento)
        2.times{tap(elemento)}
    end

    def esconder_teclado
        hide_keyboard
    end

    def confirmar_teclado
         press_keycode(66)
    end

    def localizar(atributo,identificador)
        find_element(atributo,identificador)
    end

    def localizar_todos(atributo,identificador)
        find_elements(atributo,identificador)
    end



    def executar_query(query)

        # Inicializando as variavies de conexão
        host = String('pagvendas-netposdev.cugpk8fsjek9.us-east-1.rds.amazonaws.com')
        url = String('jdbc:mysql://pagvendas-netposdev.cugpk8fsjek9.us-east-1.rds.amazonaws.com:3306')
        database = String('netpos')
        username = String('netpos')
        password = String('Phaiqu1ohW4shun8')

        # Inicializando o objeto de conexão 
        client = Mysql2::Client.new(:host => host, :username => username, :password => password, :database => database ,:url => url)

        #executando a query
        resultSet = client.query(query)
        log 'Sua query foi executada com sucesso'
    end

    def voltar_tela(vezes)
        vezes.times{back()}
    end

    def printar_step
        print = driver.screenshot_as(:base64)
        attach(print, "image/png");
    end

    def scroll_to_element_by_text(text, scrollable_index = 0)
        text = %("#{text}")
      
        content = "new UiSelector().textContains(#{text})"
      
        find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(#{scrollable_index})).scrollIntoView(#{content}.instance(0));")
    end
    
    def press_key(keycode)
        press_keycode(keycode)
    end
      
    def scroll_to_element_by_exact_text(exact_text, scrollable_index = 0)
        exact_text = %("#{exact_text}")
      
        content = "new UiSelector().text(#{exact_text})"
      
        find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(#{scrollable_index})).scrollIntoView(#{content}.instance(0));")
    end
      
    def scroll_to_element_by_content_description(content_desc_text, scrollable_index = 0)
        content_desc_text = %("#{content_desc_text}")
      
        content = "new UiSelector().description(#{content_desc_text})"
      
        find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(#{scrollable_index})).scrollIntoView(#{content}.instance(0));")
    end
      
    def scroll_to_element_by_resource_id(resource_id, scrollable_index = 0)
        # Pass the full resource-id into the param e.g.:
        # "com.example.Test:id/enter"
      
        resource_id = %("#{resource_id}")
      
        content = "new UiSelector().resourceId(#{resource_id})"
      
        find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(#{scrollable_index})).scrollIntoView(#{content}.instance(0));")
    end


    def full_print
        width  = page.execute_script("return Math.max(document.body.scrollWidth, document.body.offsetWidth, document.documentElement.clientWidth, document.documentElement.scrollWidth, document.documentElement.offsetWidth);")
        height = page.execute_script("return Math.max(document.body.scrollHeight, document.body.offsetHeight, document.documentElement.clientHeight, document.documentElement.scrollHeight, document.documentElement.offsetHeight);")
        page.current_window.resize_to(width+100, height+100)
        print = page.save_screenshot("screenshots/temp_shot.png")
        attach(print, "image/png");
    end



end 
        