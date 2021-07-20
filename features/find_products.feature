#language: pt

Funcionalidade: Buscar um produto existente e nao existente

Contexto:
  Dado que estou no "site_amazon"

@find_feature
Cenario: Realizar a busca de um produto com sucesso.
  E preencho o "campo_buscar" com "Livro harry potter"
  Quando clico no "botao_buscar"
  Entao valido que o conteudo da busca livro harry potter esta visivel

@find_feature
Cenario: Realizar a busca de um produto invalido com sucesso
  E preencho o "campo_buscar" com "produto nao existente"
  Quando clico no "botao_buscar"
  Entao valido que o conteudo da busca retornou sugestao de itens