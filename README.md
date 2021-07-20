Definimos como padrões para esse projeto:

Linguagem de programação: Ruby

Linguagem de escrita dos cenários de teste: Cucumber/Gherkin-pt

Configuração:

Baixar a versão 2.6.1 do ruby, com DevKit.

https://rubyinstaller.org/downloads/


Instalando o Bundler:
O bundler é nossa gema que gerencia as dependências do projeto, ele utiliza como referência para o seu trabalho o arquivo Gemfile, que é onde você adiciona todas as dependências do seu projeto.

Pra você utiliza-lo é necessário instalar, executando o comando abaixo no terminal:

  - gem install bundler

O comando abaixo irá realizar o download e instalação de todas as gemas do arquivo GemFile.

  - bundle install

  Obs: Se estiver dando problema neste momento, executar o comando abaixo e depois o bundle install:

  - bundle update --bundler

Realizar o download do chromedriver e colocar os arquivos dentro da pasta Ruby25-x64/bin....

  - http://chromedriver.chromium.org/downloads

Versao utilizada no projeto: ChromeDriver 91.0.4472.101


Executando testes
Para realizar execução dos testes é necessário realizar os comandos abaixo no terminal dentro da pasta do projeto.

Parametros:

Cucumber: comando que inicia execução dos casos de teste.

Possibilidades de browser configurados, chrome, chrome_headless, firefox, ie.

Ex: "cucumber chrome=true": sinaliza que desejo executar os testes somente no navegador Chrome.

Rodar por feature, passar o caminho, Ex:

features/add_shoplist.feature

Rodar utilizando as tags:

-t @shoplist_feature
-t @find_feature


######### Exemplos de comando completo, não é necessário passar todos esses parâmetros, apenas cucumber pois o chrome=true está como default.
## Roda apenas a feature especifica.
  cucumber chrome=true features\arquivo.feature
## Roda todos os cenarios com a tag shoplist_feature no browser chrome.
  cucumber chrome=true -t @shoplist_feature

