programa {
  funcao inicio() {
    inteiro opcao, idade[2]
    cadeia menu, nome[2], nomefilho[2], turma[2], documento[2][5], procurar

    faca{
      limpa()
      escreva("\nOlá seja muito bem-vindo(a). Eu sou Catrina, sua assistente virtual. Estou aqui para te ajudar no que precisar!\n")
      escreva(" ______________________________\n")
      escreva("|             MENU             |\n")
      escreva("| 1 - Cadastro                 |\n")
      escreva("| 2 - Lista de cadastros       |\n")
      escreva("| 3 - Pesquisa seu cadastro    |\n")
      escreva("| 0 - Sair do Menu             |\n")
      escreva("|______________________________|\n\n")
      escreva("Digite sua opção: \n")
      leia(opcao)

      escolha(opcao){

        caso 1:
        limpa()

        escreva("Catrina: Olá! Vamos criar sua conta rapidinho!\n\n")
        para(inteiro i = 0; i < 2; i++){
          escreva("Catrina: Primeiro, me diga seu nome completo, por favor. Quero te chamar direitinho!\n")
          escreva("Nome: ", nome[i])
          leia(nome[i])
          escreva("Catrina: Obrigada ",nome[i],"! É um prazer enorme te conhecer\n\n")
         
          escreva("Catrina: Agora me conta, qual é a sua idade? Isso me ajuda a preencher o campo de dados pessoais corretamente.\n")
          escreva("Idade: ", idade[i])
          leia(idade[i])
          escreva("Catrina: Perfeito! Anotadinho aqui.\n \n")
          
          escreva("Catrina: E qual é o nome do seu filho ou filha? Quero deixar tudo certinho no cadastro familiar.\n")
          escreva("Nome filho(a): ",nomefilho[i])
          leia(nomefilho[i])
          escreva("Catrina: Que lindo nome!\n\n")

          escreva("Catrina: Agora me diga, em qual turma ele ou ela está?\n")
          escreva("Turma: ", turma[i])
          leia(turma[i])
          escreva("Catrina: Entendido! Já registrei: ", turma[i],"\n\n")

          escreva("Catrina: Pra finalizar esta etapa, você poderia me informar quais documentos deseja cadastrar agora?\n")
          escreva("(Exemplo: RG, CPF, comprovante de residência, carteira de vacinação, certidão de nascimento...)\n")
          para(inteiro j = 0; j < 3; j++){
            escreva("Documento ", j + 1,": ")
            leia(documento[i][j])
          }  
          escreva("\n")  
        }

        escreva("Catrina: Prontinho! Já tenho seu nome, idade, o nome e a turma do seu filho, e os documentos escolhidos.\n\n")
        
        escreva("Se deseja voltar ao menu, digite 'enter'! ")
        leia(menu)
        pare

        caso 2:
        limpa()
          escreva("Catrina: Aqui está a lista de cadastros!\n")
          para(inteiro i = 0; i < 2; i++){
            escreva("Nome: ",nome[i], "\n")
            escreva("Idade: ",idade[i],"\n")
            escreva("Nome do filho: ",nomefilho[i], "\n")
            escreva("turma: ",turma[i],"\n")
            para(inteiro j = 0; j < 3; j++){
              escreva("Documentos ", j+ 1, ": ", documento[i][j],"\n")
            

            }
            escreva("Catrina: Aqui está as suas informações!!")
            escreva("\n")
          }

        escreva("Se deseja voltar ao menu, digite 'enter'! ")
        leia(menu)
        pare

        caso 3:
        limpa()
        escreva("Catrina: Vamos pesquisar seus dados?!\n")
        escreva("Catrina: Quem deseja procurar??\n")
        escreva("Nome: ")
        leia(procurar)

        para(inteiro i = 0; i < 2; i++){
          se(procurar == nome[i]){
            escreva("Nome: ",nome[i], "\n")
            escreva("Idade: ",idade[i],"\n")
            escreva("Nome do filho: ",nomefilho[i], "\n")
            escreva("turma: ",turma[i],"\n")
            para(inteiro j = 0; j < 3; j++){
             escreva("Documentos ", j+ 1, ": ", documento[i][j],"\n")
              
            }
            escreva("Catrina: Aqui está as suas informações!!")
            escreva("\n")
          }
        }

        escreva("Se deseja voltar ao menu, digite 'enter'! ")
        leia(menu)
        pare

        caso 0:
        limpa()

        escreva("Catrina: Volte logo! ")
        pare

        caso contrario:
        limpa()
        escreva("Catrina: Ops!! Não existe essa opção, volte ao menu!!")

        escreva("Se deseja voltar ao menu, digite 'enter'! ")
        leia(menu)
        pare
      }
      

    }enquanto (opcao != 0)
  }
}
