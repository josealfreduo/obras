programa{

	inclua biblioteca Matematica

	const inteiro total = 50 // constante carrega o  numero de 50m casas no veotr


	cadeia produto[total]
	real valor[total], desconto, total1 = 0.0 
	inteiro quant[total], ponteiro = 0, n = 0
	caracter resposta
	
	funcao inicio()
	{
		add_produto()
	}

	funcao add_produto()
	{ // 1 etapa: eu faço a pergunta e crio a variavel caracter(resposta) para ter a opção de escolher
		limpa()
		escreva("Gostaria de adicionar um novo produto ao carrinho? [S/N]\n")
		leia(resposta)

		se(resposta == 's' ou resposta == 'S')
		{
			limpa()
			escreva("informe o nome do produto: \n")
			leia(produto[ponteiro]) // guardo na variavel ponteiro que é igual a zero para ter valor no vetor7

			limpa()
			escreva("Qual o valor (R$) do item ", produto[ponteiro],":\n")
			leia(valor[ponteiro]) // tambem uso ponteiro aqui

			limpa()
			escreva("Quantos itens voçe quer adicionar ao carrinho deste produto?\n")
			leia(quant[ponteiro]) // perguntei a quantidade

			ponteiro++ // incrementa a variavel ponteiro
			add_produto()
		}
		senao
		{
			calcular_valor_final()
		}
	}
	
	funcao calcular_valor_final()
	{// 2 etapa: a matematica
		limpa()
		// incio do laço de repetição para mostrar itesn add carrinho
		para(n = 0; n < ponteiro; n++)
		{
			se(quant[n] <=3)
			
			{
				total1 = (valor[n] * quant[n]) + total1
				escreva(produto[n], " (R$ ", valor[n], " x ", quant[n], ") = R$", Matematica.arredondar(valor[n]*quant[n]), "\n")

			}
					/* multiplicando valor e quant 
			            uso do n para inciar o laço*/
			senao
			{
				desconto = (valor[n] * 0.05) * quant[n]
				total1 = ((valor[n] * quant[n]) + total1) - desconto
				desconto = valor[n] * 0.05 // valor do desconto de 5 por cento
				escreva(produto[n], " (R$ ", valor[n], " x ", quant[n], ") - Desc: (5%) R$",desconto, " = R$",Matematica.arredondar((valor[n]*quant[n]) - desconto), "\n")
			}
			                                                                                             //uso do n para inciar o laço*         
		}
		escreva("\nTotal da compra: R$ ", total1, ".")
	
	}
	 
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1443; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */