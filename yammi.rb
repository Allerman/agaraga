#prog. sem otimização

puts "Bem vindo ao yammi, sua lista de filmes digital"
filmes=[]

#menu
puts '[1] listar novo filme'
puts '[2] filmes listados'
puts '[3] sair'
#escolha
print 'escolha uma opção: '
opcao = gets.to_i()

#enquanto !=3 faça
while(opcao !=3) do
   
    #ifs para acoplar as funcionalidades do menu
    if(opcao == 1)
    puts 'digite o filme'
    nome= gets.chomp() 

 #adiciona ao filme
    #filmes << nome

 #adicionando mais uma definição (tipo) ultilizando hash
    puts 'digite o tipo do filme'
    tipo= gets.chomp() 
 
 #hash ultilizada
    filmes << {nome: nome, tipo: tipo}
    
    
    puts
    puts "#{nome} cadastrado com sucesso"
    puts

        elsif(opcao == 2)
            puts "############ Filmes cadastrados ############"
         filmes.each do|filme|
      #como houver uma mudança para hash a string ficou feia, então foi alterado para ser impresso assim
            puts "#{filme[:nome]} - #{filme[:tipo]}"
         end
      
 #com for
    #for filme in filmes do
    #   puts filme
 #com each
    #filmes.each do|filme|
    #    puts filme
    #end
            puts
            else
                puts 'opção invalida'
            end

    #menu colocado novamente para não acontecer loop infinito (tem que ter uma condição para o while parar)
    puts '[1] listar novo filme'
    puts '[2] filmes listados'
    puts '[3] sair'
    print 'escolha uma opção: '
    opcao = gets.to_i()

    #com for 
    #for filme in filmes do
    #   puts filme
 #com each
    #filmes.each do|filme|
    #    puts filme
    #end

end
#mensagem após escolher opção 3
puts "obrigada por usar o yammi"