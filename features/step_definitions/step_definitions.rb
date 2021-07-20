Dado('que estou no {string}') do |site|
  visit(DATA[site])
end

Dado('preencho o {string} com {string}') do |campo, texto|  
  PaginaComum.new.preenche_campo(campo,texto) 
end

Quando('clico no {string}') do |elemento|
  PaginaComum.new.clica_elemento(elemento)
end

Entao('valido que o conteudo da busca livro harry potter esta visivel') do
  assert_selector("span[class='a-size-base-plus a-color-base a-text-normal']", text:"Harry")
end

Entao('valido que o conteudo da busca retornou sugestao de itens') do
  assert_selector("span[class='a-size-base-plus a-color-base a-text-normal']")
end

Entao('visualizo o item selecionado no carrinho') do
  assert_selector("h1[class='a-size-medium a-text-bold']",text:"Adicionado ao carrinho")
end