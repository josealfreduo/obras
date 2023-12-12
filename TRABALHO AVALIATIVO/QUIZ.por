programa
{	inclua biblioteca Util
	caracter resposta, resposta_vetor[10] = {'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a'}, opcao
	inteiro ponteiroresp = 0,aponteiroresp = 0,notas = 0, numPerguntas, ponteiro = 0, ponteiroa= 0, ponteirob= 0, ponteiroc= 0
	cadeia vetor_a[10], vetor_b[10], vetor_c[10], vetor_q[10], perg[10], a[10],b[10],c[10]
	caracter resposta_correta[10]
	
	funcao inicio()
	{	escreva("===========================\n")
		escreva("| 1- Cadastrar perguntar  |\n")
		escreva("| 2- jogar quiz           |\n")
		escreva("| 3- sair                 |\n")
		escreva("===========================\n")
		escreva("Digite a sua opção: ")
		leia(opcao)

		escolha(opcao)
		{
			caso '1':
			{
				cadastrar()
				pare
			}

			caso '2':
			{
				jogar()
				pare
			}

			caso '3':
			{
				sair()
				pare
			}
		}
	}
	
	funcao cadastrar()
	{
			
			limpa()
			escreva("Qual a ", ponteiro + 1, "ª pergunta?\n")
			leia(perg[ponteiro])

			limpa()

			escreva("Quais as alternativas da ", ponteiro + 1,"ª pergunta:\n")
			escreva("Resposta A:")
			leia(a[ponteiro])
			
			escreva("Resposta B:")
			leia(b[ponteiro])
			
			escreva("Resposta C:")
			leia(c[ponteiro])
			
			

			limpa()
			escreva("Qual a resposta correta da ", ponteiro + 1, "ª pergunta:\n")
			leia(resposta_correta[ponteiro])
			
			
			ponteiro++
			limpa()
			inicio()
	
	}

	funcao jogar()
	{
		para(inteiro i = 0; i < 10; i++)
		{
			escreva(perg[i],"\n")
			escreva("A)",a[i],"\n")
			escreva("B)",b[i],"\n")
			escreva("C)",c[i],"\n")

			escreva("Qual a resposta correta? \n")
			leia(resposta)

			se(resposta_correta[i] == resposta){
				escreva("Parabens!! resposta correta")
			}
			senao{
				escreva("voce errou")
				escreva(" A resposta correta é :", resposta_vetor[i])
			}
			 
		}
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
	


	
}






/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 611; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {resposta_vetor, 3, 20, 14}-{vetor_a, 5, 8, 7}-{vetor_c, 5, 34, 7}-{perg, 5, 60, 4}-{resposta_correta, 6, 10, 16};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */