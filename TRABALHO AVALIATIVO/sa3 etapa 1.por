programa
{
       inclua biblioteca Util
    
	cadeia nome, cidade, enter, resposta
	inteiro idade
	caracter opcao
	
	
	funcao inicio()
	{
		escreva("------------------------------------------\n")
		escreva("| Seja Bem-Vindo ao cadastro de sistemas |\n")
		escreva("-----------------------------------------|\n\n")
		
          escreva(" 1-Cadastrar novo usuario\n")
          escreva(" 2-Listar todos os usuarios cadastrados\n")
          escreva(" 3-Encerrar o programa\n")
          escreva("---------------------------------: ")
           leia(opcao)
   
    escolha(opcao)
    {
    		caso '1': 
    		{
            limpa()
            escreva("Digite seu nome:\n")
            leia(nome)

            limpa()
            escreva("Qual a sua idade:\n")
            leia(idade)
            limpa()
            escreva("Cadastro realizado com sucesso!\n\n")
            escreva("Precione a tecla [ENTER] para retornar ")
	       leia(enter)
	       limpa()
	       inicio()
            
            
             pare
             
           }

    		caso '2':
    		{
            limpa()
            escreva("Lista de cadastro:\n")
            escreva("-------------------------------------\n")
            escreva("|  Relação de clientes cadastrados  |\n")
            escreva("------------------------------------\n")
            escreva("nome: ", nome,"| idade: ", idade," anos\n")
           
            escreva("Precione a tecla [ENTER] para retornar ")
	       leia(enter)
	       limpa()
            inicio()
            pare  
            
            }

    		caso '3':
    		{
            limpa()
            escreva("Deseja realmente sair do Sistema: ")
            leia(resposta)
            limpa()
            se(resposta == "sim")
            {
             escreva("Tchau! tchau!")
            
            }

            senao
            {
            	escreva("Voltando ao inicio")
               Util.aguarde(4000)
               limpa()
               escreva("Bem vindo novamente")
               Util.aguarde(2000)
               limpa()
               inicio()
            	
            }
           
            
            
    				
    		}















    	      
    }
        
        
        
        
        
        
        
        
        
        
        
        }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 58; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */