# language: pt
 # encoding: UTF-8

@fleury
@unidades
Funcionalidade: Pesquisa Por Unidade

Contexto:
  Dado que esteja no site Fleury

@pesquisa_unidade
Cenário: Pesquisar Unidade
  # aplicando string para selecionar qual opção de menu quero que a alçao de o click
  Dado que acesse o menu "Unidades"
  E selecione opções do filtro por facilidades
  Então visualizar os detalhes da primeira unidade próxima e confirmar o endereço da unidade
