#markdow para supervisionado


#   ----------------- SUPERVISED RANDOM FOREST CLASSIFICATION -----------------

````{r montando data frame para modelo supervisionado, echo = TRUE}
# realizar uma classificação supervisionada usando Random Forest.
predic.IDHM.2 <- data.frame(predic.IDHM$ano, predic.IDHM$renda_per_capita, predic.IDHM$sub_esco_pop, predic.IDHM$sub_freq_esco, predic.IDHM$esperança_de_vida, predic.IDHM$IDHM)
# renomear colunas
names(predic.IDHM.2)[1]="ano"
names(predic.IDHM.2)[2]="renda_per_capita"
names(predic.IDHM.2)[3]="sub_esco_pop"
names(predic.IDHM.2)[4]="sub_freq_pop"
names(predic.IDHM.2)[5]="esperança_de_vida"
names(predic.IDHM.2)[5]="porcent_pobres"
names(predic.IDHM.2)[5]="população_total"
names(predic.IDHM.2)[5]="mortalidade_infantil"
names(predic.IDHM.2)[5]="media_anos_de_estudo"
names(predic.IDHM.2)[5]="indice_gini"
names(predic.IDHM.2)[5]="ind_theil_L"
names(predic.IDHM.2)[5]="analfabetismo_25_anos"
names(predic.IDHM.2)[5]="analfabetismo_18_anos"
names(predic.IDHM.2)[5]="analfabetismo_15_anos"
names(predic.IDHM.2)[6]="IDHM"
# remover nulos
cc = complete.cases(predic.IDHM.2)
predic.IDHM.2 = predic.IDHM.2[cc,]
#usarei os maximos e minimos para categorizar os indices
sort(predic.IDHM.2$predic.IDHM.IDHM)
# 0.859 - 0.648 = 0.211, 0,211/3 = 70, logo low = 0.648+70= 718, 718<mid<778
### converter o Índice de Desenvolvimento Humano (IDHM) em categorias para realizar uma classificação
predic.IDHM.2$IDHM.cat <- NA
predic.IDHM.2$IDHM.cat[predic.IDHM.2$IDHM < .718 ] = "Low"
predic.IDHM.2$IDHM.cat[predic.IDHM.2$IDHM > .778 ] = "High"
predic.IDHM.2$IDHM.cat[is.na(predic.IDHM.2$IDHM.cat)] <- "Mid"
````


````{r conversão da coluna em fator ,echo = TRUE}
# converter a coluna IDHM.cat em um fator com três níveis: "Low", "Mid" e "High".
(predic.IDHM.2$IDHM.cat = factor(predic.IDHM.2$IDHM.cat, levels=c("Low", "Mid", "High")))

predic.IDHM.2
````


````{r separação do data frame para o teste e treino , echo = TRUE}
#Separar data frame em 80% para treino e 20% para teste. (caTools)
set.seed(123)
split = sample.split(predic.IDHM.2$IDHM.cat, SplitRatio = 0.80)
IDHM.training.set = subset(predic.IDHM.2, split == TRUE)
IDHM.test.set = subset(predic.IDHM.2, split == FALSE)

# random forest para classificação
IDHM.rfc = randomForest(x = IDHM.training.set[1:5],
                        y = IDHM.training.set$IDHM.cat,
                        ntree = 500, random_state = 0)
print(IDHM.rfc) 
# plotar as árvores
plot(IDHM.rfc) 
````


````{r avaliação, echo = TRUE}
#test mtry
mtry <- tuneRF(IDHM.training.set[-6],IDHM.training.set$IDHM.cat, ntreeTry=500,
               stepFactor=1,improve=0.01, trace=TRUE, plot=FALSE)
print(mtry)
#o valor ótimo para mtry é 2, que produz o menor erro de aproximadamente 0, indicação de overfiting
#avaliar a importância das variáveis para o modelo
importance(IDHM.rfc)
varImpPlot(IDHM.rfc)

#previsões no conjunto de teste
IDHM.pred.rfc = predic(IDHM.rfc, newdata = IDHM.test.set[1:7])
summary(IDHM.pred.rfc)
````





