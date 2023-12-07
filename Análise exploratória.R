library(corrplot)
library(RColorBrewer)
library(ggplot2)
library(ggpubr)

# análise exploratória

# Montar uma matriz de correlação básica de cada indicador
#criar data frame que remova as linhas com nulos.

cc = complete.cases(AED.df)
AED.corr = AED.df[cc,]

#remover não numérico
AED.corr$Territorialidades <- NULL
AED.corr$ano <- NULL

### Matriz de corelação com Corrplot

Matrix <-cor(AED.corr)
corrplot(Matrix, type="upper", order="hclust", method="pie",
         col=brewer.pal(n=8, name="RdYlBu"))

# Seu código original
corrplot(Matrix, type="upper", order="hclust", method="pie", 
         col=brewer.pal(n=8, name="RdYlBu"))

# Adicionar uma nota de rodapé
mtext("Matriz de Correlação dos Dados elaborada própria com dados do Atlas Brasil", side=1, line=4, cex=1.2)

# gini, theil e população tem relação fraca com IDHM. mas irei manter para análise
# Montar um df para (IDHM ~ renda per capita, sub. ind. ecolaridade, sub. nd. frequencia escolar e esperança de vida.)
predic.IDHM <- renda_per_capita
predic.IDHM <- join(predic.IDHM, sub_esco_pop, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, sub_freq_esco, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, esperança_de_vida, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, porcent_pobres, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, população_total, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, mortalidade_infantil, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, media_anos_de_estudo, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, indice_gini, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, ind_theil_L, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, analfabetismo_25_anos, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, analfabetismo_18_anos, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, analfabetismo_15_anos, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM <- join(predic.IDHM, IDHM, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predic.IDHM$Territorialidades <- NULL 
cc = complete.cases(predic.IDHM)
predic.IDHM = predic.IDHM[cc,]
str(predic.IDHM)


### Plotar a correlação como scatterplot matrix.
plot(predic.IDHM, pch=1 , cex=.2, col=rgb(0,0,0,0.4) , main = "Matrix Scatterplot das variáveis com correlação com o IDHM")


# relações lineares com potenciais relações diretas entre os indicadores

# Criar um scatterplot com linha de regressão para IDHM e renda per capita
ggscatter(predic.IDHM, x = "renda_per_capita", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Renda Per Capita") +
  labs(title = "Relação entre IDHM e Renda Per Capita", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ renda_per_capita, data=predic.IDHM))

# Criar um scatterplot com linha de regressão para IDHM e Subindice de Escolaridade
ggscatter(predic.IDHM, x = "sub_esco_pop", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Subindice de Escolaridade") +
  labs(title = "Relação entre IDHM e Subindice de Escolaridade", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ sub_esco_pop, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Subindice de frequência Escola
ggscatter(predic.IDHM, x = "sub_freq_esco", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Subindice de Frequência Escola") +
  labs(title = "Relação entre IDHM e Subindice de frequência Escolar", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ sub_freq_esco, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Esperança de Vida
ggscatter(predic.IDHM, x = "esperança_de_vida", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Esperança de Vida") +
  labs(title = "Relação entre IDHM e Esperança de Vida", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ esperança_de_vida, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Percentual de Pobres na População
ggscatter(predic.IDHM, x = "porcent_pobres", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Percentual de Pobres na População") +
  labs(title = "Relação entre IDHM e Percentual de Pobres na Ppopulação", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ porcent_pobres, data=predic.IDHM))




# Criar um scatterplot com linha de regressão para IDHM e População Total
ggscatter(predic.IDHM, x = "população_total", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e População Total") +
  labs(title = "Relação entre IDHM e População total", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ população_total, data=predic.IDHM))





# Criar um scatterplot com linha de regressão para IDHM e Mortalidade Infantil
ggscatter(predic.IDHM, x = "mortalidade_infantil", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Mortalidade Infantil") +
  labs(title = "Relação entre IDHM e Mortalidade Infantil", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ mortalidade_infantil, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Média de Anos de Estudo
ggscatter(predic.IDHM, x = "media_anos_de_estudo", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Média de Anos de Estudo") +
  labs(title = "Relação entre IDHM e Média de Anos de Estudo", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ media_anos_de_estudo, data=predic.IDHM))





# Criar um scatterplot com linha de regressão para IDHM eÍndice de GINI
ggscatter(predic.IDHM, x = "indice_gini", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Índice de GINI") +
  labs(title = "Relação entre IDHM e Índice de GINI", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ indice_gini, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Índice de Theil
ggscatter(predic.IDHM, x = "ind_theil_L", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Índice de Theil") +
  labs(title = "Relação entre IDHM e Índice de Theil", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ ind_theil_L, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Tx. Analfabetismo acima de 25 anos
ggscatter(predic.IDHM, x = "analfabetismo_25_anos", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Tx. Analfabetismo acima de 25 anos") +
  labs(title = "Relação entre IDHM e Tx. Analfabetismo acima de 25 anos", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ analfabetismo_25_anos, data=predic.IDHM))


# Criar um scatterplot com linha de regressão para IDHM e Tx. Analfabetismo acima de 18 anos
ggscatter(predic.IDHM, x = "analfabetismo_18_anos", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Tx. Analfabetismo acima de 18 anos") +
  labs(title = "Relação entre IDHM e Tx. Analfabetismo acima de 18 anos", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ analfabetismo_18_anos, data=predic.IDHM))


# Criar um scatterplot com linha de regressão para IDHM e Tx. Analfabetismo acima de 15 anos
ggscatter(predic.IDHM, x = "analfabetismo_15_anos", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Tx. Analfabetismo acima de 15 anos") +
  labs(title = "Relação entre IDHM e Tx. Analfabetismo acima de 15 anos", caption = "Elaboração própria com dados do Atlas Brasil")
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ analfabetismo_15_anos, data=predic.IDHM))

# Correlação positiva a todas as regressões( R2: renda per capita 0,8157, p-valor 2.2e-16
# escolaridade da população 0,5889 e p-valor 2.2e-16
# frequencia escolar 0.6569 e p-valor 2.2e-16
# esperança de vida 0.678 e p-valor 2.2e-16)
# população total R2 0.04372
# indice theil L R2 0,0707
# indice gini R2 0,06284

###Decils para avaliar a possibilidade de Outliers

print(paste0("renda_per_capita"))
quantile(predic.IDHM$renda_per_capita, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$renda_per_capita)
print(paste0("sub_esco_pop"))
quantile(predic.IDHM$sub_esco_pop, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$sub_esco_pop)
print(paste0("sub_freq_esco"))
quantile(predic.IDHM$sub_freq_esco, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$sub_freq_esco)
print(paste0("esperança_de_vida"))
quantile(predic.IDHM$esperança_de_vida, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$esperança_de_vida)
print(paste0("porcent_pobres"))
quantile(predic.IDHM$porcent_pobres, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$porcent_pobres)
print(paste0("população_total"))
quantile(predic.IDHM$população_total, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$população_total)
print(paste0("mortalidade_infantil"))
quantile(predic.IDHM$mortalidade_infantil, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$mortalidade_infantil)
print(paste0("media_anos_de_estudo"))
quantile(predic.IDHM$media_anos_de_estudo, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$media_anos_de_estudo)
print(paste0("indice_gini"))
quantile(predic.IDHM$indice_gini, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$indice_gini)
print(paste0("ind_theil_L"))
quantile(predic.IDHM$ind_theil_L, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$ind_theil_L)
print(paste0("analfabetismo_25_anos"))
quantile(predic.IDHM$analfabetismo_25_anos, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$analfabetismo_25_anos)
print(paste0("analfabetismo_18_anos"))
quantile(predic.IDHM$analfabetismo_18_anos, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$analfabetismo_18_anos)
print(paste0("analfabetismo_15_anos"))
quantile(predic.IDHM$analfabetismo_15_anos, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$analfabetismo_15_anos)


#avaliar renda per capita
quantile(predic.IDHM$renda_per_capita, probs = seq(.9, 1, by = .01))

#em novo data frame, remover tudo sobre 90% 
Q2 <- quantile(predic.IDHM$renda_per_capita, probs = c(.90))
predic.IDHM.out <- subset(predic.IDHM, predic.IDHM$renda_per_capita < (Q2))

print(paste0("renda_per_capita"))
quantile(predic.IDHM.out$renda_per_capita, probs = seq(.1, 1, by = .1))


# rodar novamente scatter para renda per capita
ggscatter(predic.IDHM.out, x = "renda_per_capita", y = "IDHM", color=rgb(1,.8,0,.3),pch=1,
          add = "reg.line", add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray", main = "gdp pc"),
          conf.int = TRUE)
summary(lm(IDHM ~ renda_per_capita, data=predic.IDHM.out))

# R2 caiu de 0.8157 para 0.8056, embora ainda significativo.
