Algoritmo "matriz_geral"

Var
   m, n, i, j : inteiro
   mat : vetor [0..9, 0..9] de real
   diagonalPrincipal: vetor [0..9] de real
   adicaoMatriz : real
   linha, coluna : inteiro
   
Inicio
      escreva("Qual a ordem da matriz? ")
      leia(m)
      n <- m
      
      para i de 0 ate m-1 faca
           para j de 0 ate n-1 faca
                escreva("Elemento [", i, ",", j,"]: ")
                leia(mat[i,j])
           fimpara
      fimpara
      
      para i de 0 ate m-1 faca
           para j de 0 ate n-1 faca
                se i = j entao
                   diagonalPrincipal[i] <- mat[i, j]
                fimse
           fimpara
      fimpara
      
      adicaoMatriz <- 0
      para i de 0 ate m-1 faca
           para j de 0 ate n-1 faca
                se mat[i, j] > 0 entao
                   adicaoMatriz <- adicaoMatriz + mat[i, j]
                fimse
           fimpara
      fimpara
      
      escreval
      escreval("SOMA DOS POSITIVOS: ",adicaoMatriz)
      escreval
      
      escreva("Escolha uma Linha: ")
      leia(linha)
      escreva("LINHA ESCOLHIDA: ")
      para i de 0 ate m-1 faca
           para j de 0 ate n-1 faca
                 se linha = i entao
                    escreva(mat[i, j]:3:1, " ")
                 fimse
           fimpara
      fimpara

      escreval
      escreval
      escreva("Escolha uma Coluna: ")
      leia(coluna)
      escreva("COLUNA ESCOLHIDA: ")
      para i de 0 ate m-1 faca
           para j de 0 ate n-1 faca
                 se coluna = j entao
                    escreva(mat[i, j]:3:1, " ")
                 fimse
           fimpara
      fimpara
      
      escreval
      escreval
      escreva("DIAGONAL PRINCIPAL: ")
      para i de 0 ate m-1 faca
           escreva(diagonalPrincipal[i]:3:1, " ")
      fimpara
      
      para i de 0 ate m-1 faca
           para j de 0 ate n-1 faca
                se mat[i, j] < 0 entao
                   mat[i, j] <- mat[i, j] ^ 2
                fimse
           fimpara
      fimpara

      escreval
      escreval
      escreval("MATRIZ ALTERADA: ")
      para i de 0 ate m-1 faca
           para j de 0 ate n-1 faca
                escreva(mat[i, j]:4:1, " ")
           fimpara
           escreval
      fimpara



Fimalgoritmo