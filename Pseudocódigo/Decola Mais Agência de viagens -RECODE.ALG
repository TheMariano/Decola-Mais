Algoritmo "Ag�ncia de Viagens - Decola Masi -Recode"
// Disciplina: L�gica de programa��o.
// Professor: Marcelo
// Descri��o: Cadastro de ag�ncia de viagem Decola Mais.
// Autor: Matheus Mariano Vieira dos Santos Silva
Var
   opcao, elementos, i: inteiro
   vetcliente, vetdestino, vetdataviagem: vetor [1..5] de caractere

procedimento adicionar_cliente()
Inicio
   se elementos <= 5 entao
      escreva("Digite o nome do cliente: ")
      leia(vetcliente[elementos])
      escreva("Qual destino da sua viagem? ")
      leia(vetdestino[elementos])
      escreva("Digite a data da sua viagem: ")
      leia(vetdataviagem[elementos])
      elementos <- elementos + 1
   senao
      escreva("N�o � poss�vel adicionar mais clientes!")
   fimse
fimprocedimento

inicio
   escreva("Bem vindo a Decola Mais!")
   elementos <- 1

   enquanto opcao <> 3 faca
      escreval()
      escreval ("1 - Adicionar cliente")
      escreval ("2 - Consultar a data da sua viagem")
      escreval ("3 - Sair do menu")
      escreval ("Digite uma op��o: ")
      leia(opcao)
      limpatela

      escolha opcao
         caso 1
            adicionar_cliente()
         caso 2
            se elementos - 1 > 0 entao
               escreval ("Aqui est� a data da sua viagem:")
               para i de 1 ate elementos - 1 faca
                  escreval ("Nome do cliente", i, ": ", vetcliente[i])
                  escreval ("Destino do Cliente: ", vetdestino[i])
                  escreval ("Data da Viagem: ", vetdataviagem[i])
               fimpara
            senao
               escreval ("Viagem n�o encontrada!")
            fimse
         caso 3
            escreval ("Saindo do programa...")
         outrocaso
            escreval ("Op��o inv�lida!")
      fimescolha
   fimenquanto
Fimalgoritmo