#Exercicios
# 1 - Crie um vetor com 12 números inteiros
vetor1 = seq(1:12)
vetor1

# 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
mat1 <- matrix (c(seq(1:16)), nr = 4)
mat1

#mat <- matrix(c(1:16), nrow = 4, ncol = 4)
#mat


# 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
lista1 <- list(vetor1, mat1)
lista1

# 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
df <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
df

# 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(df) = c("config", "esfc", "chang")
df

# 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris, imprima um resumo do dataset.
iris
class(iris)
dim(iris)
summary(iris)
str(iris)

# 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length, iris$Sepal.Width)

#8 - Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset() 
iris1 <- subset(iris, Sepal.Length > 7)
iris1

# 9 (Desafio) -Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: você vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a função slice()
iris_new <- iris
iris_new
#install.packages("dplyr")
#library(dplyr)
#class(slice(iris_new, 1:15))
novo_iris <- slice(iris_new, 1:15)
novo_iris

# 10 -Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch()para aprender como usar a função filter
RSiteSearch('filter')
filter(novo_iris, Sepal.Length > 7)
