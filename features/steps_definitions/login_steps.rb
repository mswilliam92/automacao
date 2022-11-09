#isto é o step_definitions onde serão vinculados os metodos aos steps

Dado('que estou na tela de login do app') do
  login.opcEntrar
end

Dado('que estou logado no app') do
  sleep 3
  login.opcEntrar
  login.preencherEmail "automacao@boximail.com"
  login.preecherSenha "a123456"
  esconder_teclado()
  login.entrar
  $wait.until{login.msg_inicializacao}
  expect(login.msg_inicializacao.displayed?).to be true
  login.jaConheco
end
 
Quando('informo email {string} e senha {string}') do |email, senha|
  login.preencherEmail email
  login.preecherSenha senha
  esconder_teclado()
end
 
Quando('clico no botão entrar') do
  login.entrar
end
                                                                                
Então('é apresentada a tela de inicialização') do
  #esperar(login.msg_inicializacao)                     
  $wait.until{login.msg_inicializacao}
  expect(login.msg_inicializacao.displayed?).to be true
end   

Então('é apresentada a mensagem, email ou senha invalidos') do
  expect(login.msg_email_senha_invalidos.displayed?).to be true
end

Então('é apresentada a mensagem, email invalido') do
  expect(login.email_invalido.displayed?).to be true
end

Então('é apresentada a mensagem, senha invalida') do
  expect(login.senha_invalida.displayed?).to be true
end
