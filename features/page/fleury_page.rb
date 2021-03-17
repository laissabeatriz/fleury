class Unidade < SitePrism::Page
  # mapeamento de elementos utilizando o SitePrism
  element :acesso_menu_unidades, '#button-title-desktop-header'
  element :filtro_facilidade, '#checkoox-select-facilities'
  element :ver_detalhes, '#button-see-on-map-2-paraiso'
  # elemento mapeado com xpath pois não foi possivel mapear via select para usar o elemento.select('Exeplo') para selecionar a opção desejada
  element :opcao_atendimento_domingo, :xpath, '//*[@id="gatsby-focus-wrapper"]/div[8]/div[3]/div[3]/div[1]/div[2]/div/div[5]'
  element :opcao_vacinacao, :xpath, '//*[@id="gatsby-focus-wrapper"]/div[8]/div[3]/div[3]/div[1]/div[2]/div/div[6]'
  element :opcao_atendimento_noturno, :xpath, '//*[@id="gatsby-focus-wrapper"]/div[8]/div[3]/div[3]/div[1]/div[2]/div/div[7]'
  element :nome_unidade_proxima, '#anchor-unit-cell-paraiso'

  def pesquisa_menu(menu)
    # recebendo a string "Unidades" para acessar o menu Unidades
    click_on(menu)
  end

  def select_filtro_facilidade
    # selecionando 3 opções de filtro, se tivesse o elemento SELECT nessa etapa, o código ficaria mais bonito e poderia reutilizar o elemento para selecionar 3 opções diferentes
    filtro_facilidade.click
    opcao_atendimento_domingo.click
    opcao_vacinacao.click
    opcao_atendimento_noturno.click
  end

  def visualizar_detalhes
    # armazenando o endereço obtido no page
    nome_unidade = nome_unidade_proxima.text
    # validando que o elemento está presente no page para criar uma regra de falha de cenário
    validar_unidade = page.has_text?(nome_unidade)
    ver_detalhes.click
    # validando que quando seleciono a opção de (ver detalhes) o mesmo endereço consta nos detalhes
    raise "Não foi localizado o endereço: #{nome_unidade}" if validar_unidade == false
  end

end
