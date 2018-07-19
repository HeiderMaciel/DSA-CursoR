# Manipulação de Arquivos Excel

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("Z:/Dropbox/DSA/BigDataAnalytics-R-Azure/Cap04")
getwd()

# Instalar o Java - JDK 1.8
# http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

# Windows
# Faça o download do JDK gratuitamente no site da Oracle
# Instale no seu computador
# Configure a variável de ambiente JAVA_HOME apontantando para o diretório de instalação do JDK
# Inclua o diretório JAVA_HOME/bin na variável de ambiente PATH

# Mac e Linux
# Faça o download do JDK gratuitamente no site da Oracle
# Instale no seu computador
# Abra um terminal e execute: sudo R CMD javareconf

# ********** Pacotes que requerem Java **********
# XLConnect
# xlsx
# rJava 

# ********** Pacotes que requerem Perl **********
# É necessário instalar o interpretador da linguagem Perl e adicionar o diretório bin da instalação do Perl
# na variável de ambiente PATH
# Download: https://www.activestate.com/activeperl
# gdata

# readxl

# Instalando os pacotes
install.packages('rJava')
install.packages("xlsx")
install.packages("XLConnect")
install.packages("readxl")
install.packages("gdata")
library(XLConnect)
library(readxl)
library(rJava)
library(xlsx)
library(gdata)

# Obs: Ao carregar todos os pacotes que manipulam excel, pode gerar problema de namespace, pois alguns pacotes
# possuem o mesmo nome de funções (que são diferentes entre os pacotes). Para evitar problemas, carregue e use
# os pacotes de forma individual (não carregue todos os pacotes de uma única vez).

# Pacote readxl

# Lista as worksheet no arquivo Excel
excel_sheets("UrbanPop.xlsx")

# Lendo a planilha do Excel
read_excel("UrbanPop.xlsx")
head(read_excel("UrbanPop.xlsx"))
read_excel("UrbanPop.xlsx", sheet = "Period2")
read_excel("UrbanPop.xlsx", sheet = 3)
read_excel("UrbanPop.xlsx", sheet = 4)

# Importando uma worksheet para um dataframe
df <- read_excel("UrbanPop.xlsx", sheet = 3)
head(df)

# Importando todas as worksheets
df_todas <- lapply(excel_sheets("UrbanPop.xlsx"), read_excel, path = 'UrbanPop.xlsx')
df_todas
class(df_todas)


# Pacote XLConnect
arq1 = XLConnect::loadWorkbook("UrbanPop.xlsx")
df1 = readWorksheet(arq1, sheet = "Period1", header = TRUE)
df1
class(df1)


# Pacote xlsx
df2 <- read.xlsx("UrbanPop.xlsx", sheetIndex = 1)
df2

df3 <- read.xlsx2("UrbanPop.xlsx",
                 sheetIndex = 1,
                 startRow = 2,
                 colIndex = 2)
df3


df4 <- readWorksheetFromFile("UrbanPop.xlsx",
                            sheet = 1,
                            startRow = 4,
                            endCol = 2)
df4



write.xlsx(df4, "df4.xlsx", sheetName = "Data Frame")
dir()


# Pacote gdata
arq1 <- xls2csv("df4.xlsx",
              sheet = 1,
              na.strings = "EMPTY")
arq1




