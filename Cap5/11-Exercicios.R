# Exercicios Capitulo 5

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("Z:/Dropbox/DSA/BigDataAnalytics-R-Azure/Cap05")
getwd()

# Exercicio 1 - Encontre e faça a correção do erro na instrução abaixo:

url <- 'http://espn.go.com/nfl/superbowl/history/winners'
pagina <- read_html(url)
tabela <- html_nodes(pagina, 'table')
tab <- tab[-(1:2), ]
names(tab) <- c("number", "date", "site", "result")


# Exercicio 2 - Encontre e faça a correção do erro na instrução abaixo:

library(ggplot2)
data(mpg)
data <- mpg[,c(1,7:9)]
str(data)
ddply(data, .(manufacturer), 
      summarize, 
      avgcty = mean(cty))



# Exercicio 3 - Encontre e faça a correção do erro na instrução abaixo:

ibrary(reshape2)
df = data.frame(nome = c("Zico", "Pele"), 
                chuteira = c(40, 42),
                idade = c(34,NA),
                peso = c(93, NA),
                altura = c(175, 178))
df
df_wide = melt(df, id = c("nome", "chuteira"))
df_wide




# Exercicio 4 - Encontre e faça a correção do erro na instrução abaixo:

library(zoo)
precos <- c(134.50, 135.89, 130.00, 129.80, 132.97)
datas <- as.Date(c('2010-01-04', '2010-01-05', '2010-01-06', '2010-01-07', '2010-01-08'))
tsdata <- zoo(precos, datas)
print(tsdata)




# Exercicio 5 - Encontre e faça a correção do erro na instrução abaixo:

dados$data <- as.Date(dados$data)
st <- ts(dados$valor, start = 2014, frequency = 365)
st


