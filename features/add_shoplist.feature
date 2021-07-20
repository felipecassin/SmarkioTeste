#language: pt

Funcionalidade: Adicionar um produto ao carrinho

@shoplist_feature
Cenario: Adicionar um produto ao carrinho com sucesso
  Dado que estou no "site_amazon"
  E preencho o "campo_buscar" com "Livro harry potter"
  E clico no "botao_buscar"
  E clico no "item_listado"
  Quando clico no "botao_add_carrinho"
  Entao visualizo o item selecionado no carrinho

  


  