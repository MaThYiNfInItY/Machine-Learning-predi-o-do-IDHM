library(plyr)
library(caret)
library(randomForest)
library(caTools)

#   ----------------- SUPERVISED RANDOM FOREST REGRESSION -----------------

#usar o data frame fina da análise exploratória (predict.IDHM), e selecionar os dados para treino (80%) e teste (20%)

amostra.IDHM <- predic.IDHM$IDHM %>%
  createDataPartition(p = 0.8, list = FALSE)
treino.IDHM  <- predic.IDHM[amostra.IDHM, ]
teste.IDHM <- predic.IDHM[-amostra.IDHM, ]

# random forest para regressão, iniciando com 500 arvores e mtry of 3
IDHM.model.1 <- randomForest(IDHM ~ ., data = treino.IDHM, ntree=500, mtry = 3, 
                         importance = TRUE, na.action = na.omit) 
print(IDHM.model.1) 
# Plotar erro vs numero de arvores 

plot(IDHM.model.1, main = "")

# Adicionar título e fonte no estilo ABNT
title(main = "Gráfico 4 - Erro vs Número de Árvores no Modelo Random Forest", adj = 0)
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj = 0, cex=0.8)



#Usar tuneRF para determinar se há melhor mtry na tentativa de encontrar o valor que produz o menor erro.
mtry <- tuneRF(treino.IDHM[-6],treino.IDHM$IDHM, ntreeTry=500,
               stepFactor=1,improve=0.01, trace=TRUE, plot=FALSE)
print(mtry)

#o valor ótimo para mtry é 4, que produz o menor erro de aproximadamente 0.00004620131.

set.seed(123)
# random forest para regressão com mtry=4
IDHM.model.2 <- randomForest(IDHM ~ ., data = treino.IDHM, ntree=500, mtry = 4, 
                             importance = TRUE, na.action = na.omit) 
print(IDHM.model.2) 
# Plot the error vs the number of trees graph 
plot(IDHM.model.2, main = "")

# Adicionar título e fonte no estilo ABNT
title(main = "Gráfico 5 - Erro vs Número de Árvores no Modelo Random Forest", adj = 0)
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj = 0, cex=0.8)


# Fazer predições com dados de teste usando modelo 1 (mtry = 3)
IDHM.predições.1 <- IDHM.model.1 %>% predict(teste.IDHM)
head(IDHM.predições.1)
# Fazer predições com dados de teste usando modelo 2 (mtry = 4)
IDHM.predições.2 <- IDHM.model.2 %>% predict(teste.IDHM)
head(IDHM.predições.2)


# Calcular o erro médio de previsão -- erro quadrático médio da raiz (RMSE) de ambos os modelos
RMSE(IDHM.predições.1, teste.IDHM$IDHM)
RMSE(IDHM.predições.2, teste.IDHM$IDHM)


### O modelo original com mtry=4 (hdi.rf.1) na verdade tem um RMSE menor, portanto, é o melhor modelo a ser usado daqui para frente. Um RMSE de 0.006852 é consideravelmente baixo e indica um modelo de previsão altamente válido. analisar a significância de cada variável para ver possíveis mudanças na média.

#avaliar a importância das variáveis para o modelo 
importance(IDHM.model.1)
# Plot da importância das variáveis
varImpPlot(IDHM.model.1, main = "")

# Adicionar título e fonte no estilo ABNT
title(main = "Gráfico 2 - Importância das Variáveis no Modelo Random Forest", adj = 0)
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj = 0, cex=0.8)

#A variável renda_per_capita tem o maior %IncMSE, o que indica que é a variável mais importante no modelo em termos de previsão. Seu valor de IncNodePurity também é o mais alto, o que sugere que ela é crucial para separar os dados.

#As variáveis sub_esco_pop, sub_freq_esco e esperança_de_vida também têm valores %IncMSE consideráveis, indicando sua relevância no modelo.

#A variável ano tem o menor %IncMSE, sugerindo que é a menos importante entre as variáveis listadas. Esperado, não limpei o ano


###Join predictions to test table ******************

# Converter predições para um data frame 
IDHM.predições.df <- as.data.frame(IDHM.predições.1)
# Mesclar com base no índice
IDHM.predições.df <- merge(teste.IDHM, IDHM.predições.df, by.x = 0, by.y = 0, all.x = TRUE, all.y = TRUE)
# Criar uma nova coluna calculada com a diferença da predição do IDHM, e o valor Real
IDHM.predições.df$diff <- with(IDHM.predições.df, IDHM.predições.df$IDHM - IDHM.predições.df$IDHM.predições.1)
# Obter a média da diferença
IDHM.predições.df
mean(IDHM.predições.df[,"diff"])
#0.001515058, significa que, em média, o modelo está subestimando o IDHM em 0.001515058 unidades.


### visualizando as predições do modelo em comparação com os valores reais em plots
# Redefinir o índice de linha(row.names)
rownames(IDHM.predições.df ) <- NULL
# Ordenar os dados (sort)
IDHM.predições.df <- IDHM.predições.df[order(IDHM.predições.df$IDHM),]
# Plotar as predições versus o IDHM real
plot(IDHM.predições.df$IDHM.predições.1, type = "l", col="red", 
     xlab="Dados Testados", ylab="Real vs. Predição", main="")

# Adicionar linhas do IDHM Real
lines(IDHM.predições.df$IDHM, lwd=2)

# Adicionar a legenda
legend("topright", 
       legend=c("Predição IDHM", "IDHM Real"),
       col=c("red", "black"),
       lty=1,
       cex=0.8)

# Adicionar título e fonte no estilo ABNT
title(main = "Gráfico 3 - Variação da Predição do IDHM", adj = 0)
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj = 0, cex=0.8)




#   ----------------- SUPERVISED RANDOM FOREST CLASSIFICATION -----------------

# realizar uma classificação supervisionada usando Random Forest.
predict.IDHM.2 <- data.frame(predict.IDHM$ano, predict.IDHM$renda_per_capita, predict.IDHM$sub_esco_pop, predict.IDHM$sub_freq_esco, predict.IDHM$esperança_de_vida, predict.IDHM$IDHM)
# renomear colunas
names(predict.IDHM.2)[1]="ano"
names(predict.IDHM.2)[2]="renda_per_capita"
names(predict.IDHM.2)[3]="sub_esco_pop"
names(predict.IDHM.2)[4]="sub_freq_pop"
names(predict.IDHM.2)[5]="esperança_de_vida"
names(predict.IDHM.2)[5]="porcent_pobres"
names(predict.IDHM.2)[5]="população_total"
names(predict.IDHM.2)[5]="mortalidade_infantil"
names(predict.IDHM.2)[5]="media_anos_de_estudo"
names(predict.IDHM.2)[5]="indice_gini"
names(predict.IDHM.2)[5]="ind_theil_L"
names(predict.IDHM.2)[5]="analfabetismo_25_anos"
names(predict.IDHM.2)[5]="analfabetismo_18_anos"
names(predict.IDHM.2)[5]="analfabetismo_15_anos"
names(predict.IDHM.2)[6]="IDHM"
# remover nulos
cc = complete.cases(predict.IDHM.2)
predict.IDHM.2 = predict.IDHM.2[cc,]
#usarei os maximos e minimos para categorizar os indices
sort(predict.IDHM.2$predict.IDHM.IDHM)
# 0.859 - 0.648 = 0.211, 0,211/3 = 70, logo low = 0.648+70= 718, 718<mid<778
### converter o Índice de Desenvolvimento Humano (IDHM) em categorias para realizar uma classificação
predict.IDHM.2$IDHM.cat <- NA
predict.IDHM.2$IDHM.cat[predict.IDHM.2$IDHM < .718 ] = "Low"
predict.IDHM.2$IDHM.cat[predict.IDHM.2$IDHM > .778 ] = "High"
predict.IDHM.2$IDHM.cat[is.na(predict.IDHM.2$IDHM.cat)] <- "Mid"

# converter a coluna IDHM.cat em um fator com três níveis: "Low", "Mid" e "High".
(predict.IDHM.2$IDHM.cat = factor(predict.IDHM.2$IDHM.cat, levels=c("Low", "Mid", "High")))

predict.IDHM.2

# Separar data frame em 80% para treino e 20% para teste. (caTools)
set.seed(123)
split = sample.split(predict.IDHM.2$IDHM.cat, SplitRatio = 0.80)
IDHM.training.set = subset(predict.IDHM.2, split == TRUE)
IDHM.test.set = subset(predict.IDHM.2, split == FALSE)

# random forest para classificação
IDHM.rfc = randomForest(x = IDHM.training.set[1:5],
                       y = IDHM.training.set$IDHM.cat,
                       ntree = 500, random_state = 0)
print(IDHM.rfc) 
# plotar as árvores
plot(IDHM.rfc) 


#test mtry
mtry <- tuneRF(IDHM.training.set[-6],IDHM.training.set$IDHM.cat, ntreeTry=500,
               stepFactor=1,improve=0.01, trace=TRUE, plot=FALSE)
print(mtry)
#o valor ótimo para mtry é 2, que produz o menor erro de aproximadamente 0, indicação de overfiting
#avaliar a importância das variáveis para o modelo
importance(IDHM.rfc)
varImpPlot(IDHM.rfc)

#previsões no conjunto de teste
IDHM.pred.rfc = predict(IDHM.rfc, newdata = IDHM.test.set[1:7])
summary(IDHM.pred.rfc)
#Criar matriz de confusão para ver a acuráciado test 
table(IDHM.test.set[, 7], IDHM.pred.rfc)


write.csv(IDHM.pred.rfr, "IDHM_pred_rfr.csv", row.names=FALSE)
library(writexl)

write_xlsx(IDHM.pred.rfr, "IDHM_pred_rfr.xlsx")
# Plotar as predições versus o IDHM real
plot(IDHM.pred.rfr$IDHM.predictions.3, type = "l", col="red", 
     xlab="Tested Data", ylab="Actual vs. Predicted", 
     main="Prediction Variance",
     ylim=c(min(IDHM.pred.rfr$IDHM, IDHM.pred.rfr$IDHM.predictions.3), max(IDHM.pred.rfr$IDHM, IDHM.pred.rfr$IDHM.predictions.3))) #ajustar limites do eixo y

# Adicionar valores reais
lines(IDHM.pred.rfr$IDHM, lwd=2)

# Adicionar legenda
legend("topright", # posição da legenda
       legend=c("Predicted IDHM", "Actual IDHM"), # rótulos da legenda
       col=c("red", "black"), # cores das linhas
       lty=1, # tipo de linha
       cex=0.8) # tamanho da fonte
