# Automação
automação mobile SmartPos

> Este projeto tem o intuito de implementar testes regressivos automatizados para o app SmartPos na plataforma Android.

## Construído com:
Ruby, Appium, Cucumber

Android Studio, Java JDK, Visual Studio Code, Cmder, Git

## Configuração do Ambiente:

### Ferramentas base
**instale:**

Ruby - https://rubyinstaller.org
Appium - http://appium.io
Node Js - https://nodejs.org/en
Android Studio - https://developer.android.com/studio 
Java JDK - https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html 
Visual Studio Code - https://code.visualstudio.com/download 
Cmder - https://cmder.net
Git -https://git-scm.com/downloads

### Variáveis de Ambiente

#### JAVA_HOME
https://confluence.atlassian.com/confbr1/configurando-a-variavel-java_home-no-windows-933709538.html

#### ANDROID_HOME
https://www.youtube.com/watch?v=wnkynX7Yreo

#### Path do Sistema

Editar variaveis de ambiente do sistema!
Na seção variáveis do sistema localize a variável de ambiente `PATH` e selecione-a. Clique em Editar e insira:

%JAVA_HOME%\bin

%ANDROID_HOME%\platform-tools

%ANDROID_HOME%\tools

%ANDROID_HOME%\tools\bin

%ANDROID_HOME%\tools\lib

Clique em OK. Feche todas as janelas restantes clicando em OK.

## Clonar o Projeto
Abra a pasta em que deseja clonar o projeto execute o comando com git bash ou algum outro terminal que possua git integrado:

```
git clone <url do projeto no git>
```
## Configuração para Desenvolvimento
Para gerenciar nossas gems (dependências) do ruby nós precisamos instalar o Bundler, na pasta do projeto execute o comando abaixo no terminal:
```sh
gem install bundler
```
em seguida para instalar as gems(configuradas no arquivo gemfile.rb) execute o comando
```sh
bundle install
```

## Executando o projeto
  
na pasta do projeto execute o comando baixo para executar como um todo

```sh
cucumber -t @tag definido no .feature 
```
a execução do teste deverá ser iniciada

