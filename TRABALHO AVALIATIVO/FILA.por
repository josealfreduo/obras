programa
{
	inclua biblioteca Util
	cadeia fila[25], novoValor, opt
	inteiro contador = 0
	caracter opcao
	
	
	funcao inicio()
	{
		limpa()
		escreva("1 - Adicionar\n")
		escreva("2 - Remover\n")
		escreva("3 - Listar o primeiro da fila\n")
		escreva("4 - status\n")
		escreva("5 - Conferir se está Vazio\n")
		escreva("6 - listar todos\n")
		escreva("7 - Remover todos\n")
		escreva("escolha a opcão: \n")
		leia(opcao)
		limpa()

		escolha (opcao){

			caso '1': {
				adicionar()
				pare
			}
			caso '2': {
				remover()
				pare
			}

			caso '3':{
				listar()
				pare
			}
			caso '4':{
				isEmpty()
				pare
			}
			caso '5':{
				status()
				pare
			}
			caso '6':{
				tamanho()
				pare
			}
			caso '7':{
				todos()
				pare
			}



			
		}
	
	}
	
	funcao adicionar(){
		limpa()
		escreva("Inserir na Fila\n")		
		leia(fila[contador])
		contador++
		inicio()
			
		}
	funcao remover(){
				para (inteiro i = 0; i < contador; i++){
			
			fila[i] = fila[i+1]
			}
			contador--
			inicio()
			
		}
	funcao listar(){
		limpa()
		escreva(fila[0])
		Util.aguarde(4000)
		inicio()
		}
	funcao isEmpty(){
		limpa()
		se(fila[0] == ""){
			escreva("Está Vazio")
			}senao{
				escreva("Não está Vazio")
				}
			Util.aguarde(4000)
			inicio()
		}
	funcao status(){
		limpa()																			
		escreva("Há ", contador, " livros na fila")
		Util.aguarde(4000)
		inicio()
		}
	funcao tamanho(){
		limpa()
		para (inteiro i = 0; i <= contador; i++){
		escreva("LIVRO: ", fila[i], "\n")
			}
		Util.aguarde(4000)
		inicio()
		}
		funcao todos(){
			contador= 0
			para (inteiro i = 0; i < contador; i++){
			
			fila[i] = fila[i+1]
			}
			contador--
			inicio()
			
		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */