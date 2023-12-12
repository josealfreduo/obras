programa
{
       inclua biblioteca Util
    
	cadeia nome[24], enter, resposta
	inteiro idade[24], quant = 0, ponteiro = 0, n = 0
	caracter opcao
	
	
	funcao inicio()
	{
		//realiza o teste se a quant for igual a zero, caso seja perg qnts rgs realizar, senao apresenta menu
		se(quant == 0)
		{
		limpa()
		escreva("Quantos registros gostaria de fazer? [Max: 24]\n")
		leia(quant)
          // verifica se o valor da quantidade está dentro do permitido
		se(quant < 1 ou quant > 24)
		{
			limpa()
			escreva("ATENÇÃO: Valor não permitido")
			quant = 0 // restaura o valor padrão
			Util.aguarde(2000)
			inicio()
		}
		
		}
          
		
		limpa()
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
           se(ponteiro < quant)
           {
            
            
            
            limpa()
            escreva("Digite seu nome:\n")
            leia(nome[ponteiro])

            limpa()
            escreva("Qual a sua idade ", nome[ponteiro],"\n")
            leia(idade[ponteiro])

            ponteiro++

            limpa()
            
            
            escreva("Cadastro realizado com sucesso!\n\n")
            escreva("Precione a tecla [ENTER] para retornar ")
	       leia(enter)
	       limpa()
	       inicio()
           }
           senao
           {
           	limpa()
           	escreva("ATENÇÃO: Você atingiu o limite de registros suportados!")
           	Util.aguarde(2000)
           	inicio()
           }


            
             pare
             
           }

    		caso '2':
    		{
            limpa()
            escreva("Lista de cadastro:\n")
            escreva("-------------------------------------\n")
            escreva("|  Relação de clientes cadastrados  |\n")
            escreva("------------------------------------\n")
            se(ponteiro == 0)
            {
            	escreva("Nenhum registro foi encontrado\n\n")
            }
            senao
            {
                para(n = 0; n < ponteiro; n++)
            	
            escreva("nome: ", nome[n],"| idade: ", idade[n]," anos\n")
            }
            escreva("\n--------------------------------------------------\n")
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
 * @POSICAO-CURSOR = 2306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 5, 8, 4}-{idade, 6, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */