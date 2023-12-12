programa
{	inclua biblioteca Texto
	inclua biblioteca Util

	cadeia livro[24], enter, lista, busca
	caracter opcao, resposta
	inteiro quant = 0, ponteiro = 0, n = 0, x = 0
	logico encontrado = falso


	
	funcao inicio()
	{
		se(quant == 0)
		{
		limpa()
		escreva("Quantos quantos livros gostaria de comprar? [Max: 24]\n")
		leia(quant)
		limpa()
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
		

	
		escreva(" -------------------------------------\n")
		escreva("|	MENU PRINCIPAL - LIVROS       |\n")
		escreva(" -------------------------------------\n\n")
		escreva("1- empilhar novo livro\n")
		escreva("2- Remover livro da pilha\n")
		escreva("3- Remover todos os livros da pilha\n")
		escreva("4- Listar todos os livros da pilha\n")
		escreva("5- Mostrar status da pilha\n")
		escreva("6- Sair\n\n")
		escreva("--------------------------------------\n\n")
		escreva("Escolha a opção: ")
		leia(opcao)
		limpa()

	  escolha(opcao)
	{
		caso '1':
		{
			empilhar()
			pare
		}

		caso '2':
		{
			remover()
			pare
		}
		
		caso '3':
		{
			remover_todos()
			pare
		}
		
		caso '4':
		{
			listar()
			pare
		}
		
		caso '5':
		{
			status()
			pare
		}

		caso '6':
		{
			sair()
			pare
		}
	
	}


	}
	
	funcao empilhar()
	{
		
		
		se (ponteiro < quant)
		{
		  
		  escreva("Qual livro deseja adicionar: \n")	
		  leia(livro[ponteiro])
		  livro[ponteiro] = Texto.caixa_alta(livro[ponteiro])
		  ponteiro++
		  limpa()

		  escreva("livro cadastrado com sucesso!\n\n")
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

	funcao listar()
	{
	      limpa()
           
            escreva("-------------------------------------\n")
            escreva("|   Relação de livros cadastrado     |\n")
            escreva("-------------------------------------\n\n")
            se(ponteiro == 0)
            {
            	escreva("Nenhum livro foi encontrado\n\n")
            }
            senao
            {
                para(n = 0; n < ponteiro; n++)
            	
            escreva("LIVRO: ", livro[n],"\n")
            }
            escreva("\n-------------------------------------\n")
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
            se(resposta == 'S' ou resposta == 's')
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
		
		funcao remover()
		{
			livro[ponteiro-1] = ""
		     ponteiro--
		     inicio()
	
		}
	
	
	funcao remover_todos()
	
	{		ponteiro= 0
			para (inteiro i = 0; i < ponteiro; i++){
			
			livro[i] = livro[i+1]
			}
			ponteiro--
			inicio()	

		
			
	
	
	}

	funcao status(){

		se(livro[0] == ""){
			escreva("Está Vazio o carrinho")
			}senao{
				escreva("Não está Vazio o carrinho")
				}
			Util.aguarde(4000)
			limpa()
			inicio()
	}




	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 73; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {livro, 5, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */