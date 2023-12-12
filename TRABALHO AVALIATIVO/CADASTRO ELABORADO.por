programa
{
       inclua biblioteca Util
       inclua biblioteca Texto
       
    
	cadeia nome[24], enter, busca
	inteiro idade[24], quant = 0, ponteiro = 0, n = 0, x = 0
	caracter opcao, resposta
	logico encontrado = falso
	
	
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
          escreva(" 3-Buscar por cliente cadastrado\n")
          escreva(" 4-Exluir cliente cadastrado\n")
          escreva(" 5-Encerrar o programa\n")
          escreva("---------------------------------: ")
          escreva("Escreva a opção desejada:")
           leia(opcao)
           
   
    escolha(opcao)
    {
    		caso '1': 
    		{
    			usuario()
    			pare
    		}
    		


    		caso '2':
    		{
            cadastro()
            pare  
            
            }

    		caso '5':
    		{
    			sair()
    			
    			pare
          	
    		}

           caso '3':
           {
             buscar()
             pare

           }

           caso '4':
           {
           	remover()
           	pare
           }



    }
        
        
     }
     funcao usuario()
     {
     	 se(ponteiro < quant)
           {
            
            
            
            limpa()
            escreva("Digite seu nome:\n")
            leia(nome[ponteiro])
            nome[ponteiro] = Texto.caixa_alta(nome[ponteiro])

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
     }

     funcao cadastro()
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
            	
            escreva("Nome: ", nome[n],"| Idade: ", idade[n]," Anos\n")
            }
            escreva("\n--------------------------------------------------\n")
            escreva("Precione a tecla [ENTER] para retornar ")
	       leia(enter)
	       limpa()
            inicio()
     }

     funcao sair()
     {
     	 limpa()
            escreva("Deseja realmente sair do Sistema: [S/N] ")
            leia(resposta)
            limpa()
            se(resposta == 'S')
            {
             escreva("********** ATÉ BREVE!**********")
            
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
     
     funcao buscar()
     {
     	encontrado = falso	
            limpa()
            escreva("Informe o nome da pessoa que voçe gostaria de buscar:\n")
            leia(busca)
            busca = Texto.caixa_alta(busca)
            limpa()
            
             para(n = 0; n<ponteiro; n++)
             {
             	  // buscar por nome dentro do vetor
             	  se(busca == nome[n])
             	  {
             	  	escreva("Nº. ",n+1, " - Nome: ", nome[n], " - Idade: ", idade[n], "\n")
             	     encontrado = verdadeiro
             	  }	
             
             	  
             }
              
             se(encontrado == falso){
             	 escreva("Nenhum cliente encontrado\n\n")
             	 Util.aguarde(1000)
             	 limpa() 
             }
                Util.aguarde(1000)
                escreva("Gostaria de procurar outro nome?[S/N]\n\n")
                leia(resposta)
                se(resposta == 'S'){
                	limpa()
                	escreva("Informe o nome da pessoa que voçe gostaria de buscar:\n\n")
                  buscar()
                  
                  
                }
                senao
                {
                	limpa()
                	 escreva("Precione a tecla [ENTER] para retornar ")
	         leia(enter)
	         limpa()
              inicio()
                }
     }

     funcao remover()
     {
     	limpa()	
		escreva("Informe o nome do(a) que deseja remover:\n")
		leia(busca)
		busca = Texto.caixa_alta(busca)
		encontrado = falso

		para(n = 0 ; n < ponteiro ; n++)
		{
			se(nome[n] == busca) // comparação: se nome é igual a busca
			{
				encontrado = verdadeiro // o encontrado passa a ser verdadeiro
				limpa()
                    escreva("Gostaria de remover o cliente ", nome[n], "[S/N]?\n")
                    leia(resposta)
                    
                    se(resposta == 's' ou resposta == 'S')
				{
				escreva("O usuario ", nome[n], "foi removido com sucesso!\n")
				
				
					para( x = n; x < ponteiro-1; x++) // x recebe o valor de n
					{
						nome[x] = nome[x+1]
						idade[x] = idade[x+1]
					}
					ponteiro--
				 
				}
			}
		}
		
		 inicio()
		 
		










     	
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5870; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */