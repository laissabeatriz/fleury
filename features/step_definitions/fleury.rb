Dado("que esteja no site Fleury") do
  visit 'https://www.fleury.com.br'
end

# na variável (menu) estou recebendo a string que foi definida no bdd
Dado("que acesse o menu {string}") do |menu|
  # passando a váriavel para a classe pesquisa_menu para receber em qual string dele clicar
  unidade.pesquisa_menu(menu)
end

Dado("selecione opções do filtro por facilidades") do
  unidade.select_filtro_facilidade
end

Então("visualizar os detalhes da primeira unidade próxima e confirmar o endereço da unidade") do
  unidade.visualizar_detalhes
end
