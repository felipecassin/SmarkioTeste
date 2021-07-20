class PaginaComum
  include Capybara::DSL

  def clica_elemento(elemento, index = 0)
    assert_selector(EL[elemento], visible: true, wait: 10)
    all(EL[elemento])[index.to_i].click
  end

  def preenche_campo(campo, texto, index = 0)
    assert_selector(EL[campo], visible: true, wait: 10)
    all(EL[campo])[index.to_i].set(texto)
  end

end
