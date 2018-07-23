# RProfiler


# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("Z:/Dropbox/DSA/BigDataAnalytics-R-Azure/Cap05")
getwd()

a <- c(1, 2, 3)
b <- c(4, 5, 6)

# Iniciando o profile
?Rprof
Rprof("debug.txt")
df = data.frame(a, b)
df

# Código que não deve fazer parte do profile
Rprof(NULL)
str(df)

# Interrompendo o profile
Rprof()

# Sumarizando os resultados
summaryRprof("debug.txt")


# Utilizando um arquivo temporário
Rprof(tmp <- tempfile())
example(glm)
Rprof()
summaryRprof(tmp)


install.packages("profr")
library(profr)
library(ggplot2)
?profr

x = profr(example(glm))
ggplot(x)






