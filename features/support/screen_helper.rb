Dir[File.join(File.dirname(__FILE__),'../screens/*_screen.rb')].each { |file| require file }

#modulo para chamar as classes instanciadas
module Screens
    
    
    def login
         @login ||= LoginScreen.new
    end

    def categoria
        @categoria ||= CategoriaScreen.new
    end

    def menu
        @menu ||= MenuScreen.new
    end 

    def cliente
        @cliente ||= ClienteScreen.new
    end

end