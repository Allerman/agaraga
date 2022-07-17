#prog. com otimização

INSE_FILME = 1
VISU_FILME = 2
PESQUISA = 3    
SAIR = 4

def bem_vindo
    puts "Bem vindo ao yammi, sua lista de filmes digital"
end

def menu
    puts "[#{INSE_FILME}] listar novo filme"
    puts "[#{VISU_FILME}] filmes listados"
    puts "[#{PESQUISA}] pesquisar filmes"
    puts "[#{SAIR}] sair"
    print 'escolha uma opção: '
end

def inse_filme 
    puts 'digite o filme'
    nome= gets.chomp() 

    puts 'digite o tipo do filme'
    tipo= gets.chomp() 
    
    filmes << {nome: nome, tipo: tipo}
    puts
    puts "#{nome} cadastrado com sucesso"
    puts
end
def visu_filme 
    puts "############ Filmes cadastrados ############"
    filmes.each do|filme|
       puts "#{filme[:nome]} - #{filme[:tipo]}"
       
       if filmes.empty?
        puts 'nenhum filme cadastrado'
      end
end

bem_vindo()

 filmes=[]

 menu()
opcao = gets.to_i()
loop do   
    if(opcao == INSE_FILME)
    filmes << inse_filme()
        elsif(opcao == VISU_FILME)
            visu_filme(filmes)
         elsif(opcao == PESQUISA)
        
         elsif(opcao==SAIR)
            break

            else
                puts 'opção invalida'
            end
            
    menu()
    opcao = gets.to_i()

end
puts "obrigada por usar o yammi"