# criando um leitor sem chumbar a pasta raiz, então tudo que estiver dentro do projeto com .rb será acessado sem precisar definir o caminho especifico
Dir[File.join(File.dirname(__FILE__),
              '../page/*.rb')].sort.each { |file| require file }

# modulos para chamar as classes instanciadas
module Pages
  def unidade
    Unidade.new
  end
end
