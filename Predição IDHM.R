# renda per capita
library(tidyr)
library(plyr)
library(readxl)

# importar xlsx
renda_per_capita <- read_excel("renda.per.capita.xlsx")
# usar gather, converter anos à coluna unica.
renda_per_capita <- gather(renda_per_capita, ano, renda_per_capita, X2012:X2021, convert = TRUE)
# convert ano de character a numero, e limpar o X em frente ao ano
renda_per_capita$ano <- gsub('X', '', renda_per_capita$ano)
# converter colunas non-numeric à numeric
renda_per_capita <- transform(renda_per_capita, ano = as.numeric(ano))
renda_per_capita <- transform(renda_per_capita, renda_per_capita = as.numeric(renda_per_capita))
# criar data frame par juntar com demais indicadores
predict.IDHM <- renda_per_capita
predict.IDHM

# subindice escolaridade da população
sub_esco_pop <- read_excel("sub.esco.pop.xlsx")
sub_esco_pop <- gather(sub_esco_pop, ano, sub_esco_pop, X2012:X2021, convert = TRUE)
sub_esco_pop$ano <- gsub('X', '', sub_esco_pop$ano)
sub_esco_pop <- transform(sub_esco_pop, ano = as.numeric(ano))
sub_esco_pop <- transform(sub_esco_pop, sub_esco_pop = as.numeric(sub_esco_pop))
predict.IDHM <- join(predict.IDHM, sub_esco_pop, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predict.IDHM

# subindice fluxo de escolaridade
sub_freq_esco <- read_excel("sub.freq.esco.xlsx")
sub_freq_esco <- gather(sub_freq_esco, ano, sub_freq_esco, X2012:X2021, convert = TRUE)
sub_freq_esco$ano <- gsub('X', '', sub_freq_esco$ano)
sub_freq_esco <- transform(sub_freq_esco, ano = as.numeric(ano))
sub_freq_esco <- transform(sub_freq_esco, sub_freq_esco = as.numeric(sub_freq_esco))
predict.IDHM <- join(predict.IDHM, sub_freq_esco, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predict.IDHM

# experança de vida
esperança_de_vida <- read_excel("esperança.de.vida.xlsx")
esperança_de_vida <- gather(esperança_de_vida, ano, esperança_de_vida, X2012:X2021, convert = TRUE)
esperança_de_vida$ano <- gsub('X', '', esperança_de_vida$ano)
esperança_de_vida <- transform(esperança_de_vida, ano = as.numeric(ano))
esperança_de_vida <- transform(esperança_de_vida, esperança_de_vida = as.numeric(esperança_de_vida))
predict.IDHM <- join(predict.IDHM, esperança_de_vida, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predict.IDHM


#import
IDHM <- read_excel("IDHM.xlsx")
IDHM <- gather(IDHM, ano, IDHM, X2012:X2021, convert = TRUE)
IDHM$ano <- gsub('X', '', IDHM$ano)
IDHM <- transform(IDHM, ano = as.numeric(ano))
IDHM <- transform(IDHM, IDHM = as.numeric(IDHM))
predict.IDHM <- join(predict.IDHM, IDHM, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
predict.IDHM

#remover linhas com nulls
cc = complete.cases(predict.IDHM)
predict.IDHM = predict.IDHM[cc,]
#Remover colunas non-numerical
predict.IDHM$country <- NULL 
predict.IDHM$year <- NULL
predict.IDHM


# daods: 90% para treino e 10% para test
library(caret)
set.seed(123)
IDHM.samples <- predict.IDHM$IDHM %>%
  createDataPartition(p = 0.9, list = FALSE)
train.IDHM  <- predict.IDHM[IDHM.samples, ]
test.IDHM <- predict.IDHM[-IDHM.samples, ]
# Redefinir o índice de linha(row.names)
row.names(test.IDHM) <- NULL

library(randomForest)
# random forest para regressão, iniciando com 500 arvores e mtry of 3
IDHM.rf <- randomForest(IDHM ~ ., data = train.IDHM, ntree=500, mtry = 3, 
                       importance = TRUE, na.action = na.omit) 
print(IDHM.rf) 
# Plotar erro vs número de árvores 
plot(IDHM.rf)


# Fazer predições
IDHM.predictions <- IDHM.rf %>% predict(test.IDHM)
head(IDHM.predictions)


#Calcular o erro médio de previsão -- erro quadrático médio da raiz (RMSE)
RMSE(IDHM.predictions, test.IDHM$IDHM)


# converter predições em um data frame
IDHM.pred <- as.data.frame(IDHM.predictions)
# Mesclar com base no índice
IDHM.pred <- merge(test.IDHM, IDHM.pred, by.x = 0, by.y = 0, all.x = TRUE, all.y = TRUE)
# Criar uma nova coluna calculada com a diferença da predição do IDHM, e o valor Real
IDHM.pred$diff <- with(IDHM.pred, IDHM.pred$IDHM.predictions - IDHM.pred$IDHM)
# Obter a média da diferença
mean(IDHM.pred[,"diff"])
IDHM.pred

# Ordenar os dados (sort)
IDHM.pred <- IDHM.pred[order(IDHM.pred$IDHM),]
# Plotar as predições versus o IDHM real
plot(IDHM.pred$IDHM.predictions,type = "l", col="red",xlab="Tested Data", ylab="Actual vs. Predicted", main="Prediction Variance") +
  lines(IDHM.pred$IDHM, lwd=2)

