library(tidyr)
library(readxl)
library(plyr)


renda_per_capita <- read_excel("renda.per.capita.xlsx")
#usar gather para converter anos à coluna
renda_per_capita <- gather(renda_per_capita, ano, renda_per_capita, X2012:X2021, convert = TRUE)
#Limpar o X a frente do ano
renda_per_capita$ano <- gsub('X', '', renda_per_capita$ano)
#converter ano de character para numeric
renda_per_capita <- transform(renda_per_capita, ano = as.numeric(ano))
renda_per_capita <- transform(renda_per_capita, renda_per_capita = as.numeric(renda_per_capita))


sub_esco_pop <- read_excel("sub.esco.pop.xlsx")
sub_esco_pop <- gather(sub_esco_pop, ano, sub_esco_pop, X2012:X2021, convert = TRUE)
sub_esco_pop$ano <- gsub('X', '', sub_esco_pop$ano)
sub_esco_pop <- transform(sub_esco_pop, ano = as.numeric(ano))
sub_esco_pop <- transform(sub_esco_pop, sub_esco_pop = as.numeric(sub_esco_pop))



sub_freq_esco <- read_excel("sub.freq.esco.xlsx")
sub_freq_esco <- gather(sub_freq_esco, ano, sub_freq_esco, X2012:X2021, convert = TRUE)
sub_freq_esco$ano <- gsub('X', '', sub_freq_esco$ano)
sub_freq_esco <- transform(sub_freq_esco, ano = as.numeric(ano))
sub_freq_esco <- transform(sub_freq_esco, sub_freq_esco = as.numeric(sub_freq_esco))




esperança_de_vida <- read_excel("esperança.de.vida.xlsx")
esperança_de_vida <- gather(esperança_de_vida, ano, esperança_de_vida, X2012:X2021, convert = TRUE)
esperança_de_vida$ano <- gsub('X', '', esperança_de_vida$ano)
esperança_de_vida <- transform(esperança_de_vida, ano = as.numeric(ano))
esperança_de_vida <- transform(esperança_de_vida, esperança_de_vida = as.numeric(esperança_de_vida))



porcent_pobres <- read_excel("porcent_pobres.xlsx")
porcent_pobres <- gather(porcent_pobres, ano, porcent_pobres, X2012:X2021, convert = TRUE)
porcent_pobres$ano <- gsub('X', '', porcent_pobres$ano)
porcent_pobres <- transform(porcent_pobres, ano = as.numeric(ano))
porcent_pobres <- transform(porcent_pobres, porcent_pobres = as.numeric(porcent_pobres))



população_total <- read_excel("população_total.xlsx")
população_total <- gather(população_total, ano, população_total, X2012:X2021, convert = TRUE)
população_total$ano <- gsub('X', '', população_total$ano)
população_total <- transform(população_total, ano = as.numeric(ano))
população_total <- transform(população_total, população_total = as.numeric(população_total))



mortalidade_infantil <- read_excel("mortalidade_infantil.xlsx")
mortalidade_infantil <- gather(mortalidade_infantil, ano, mortalidade_infantil, X2012:X2021, convert = TRUE)
mortalidade_infantil$ano <- gsub('X', '', mortalidade_infantil$ano)
mortalidade_infantil <- transform(mortalidade_infantil, ano = as.numeric(ano))
mortalidade_infantil <- transform(mortalidade_infantil, mortalidade_infantil = as.numeric(mortalidade_infantil))



media_anos_de_estudo <- read_excel("media_anos_de_estudo.xlsx")
media_anos_de_estudo <- gather(media_anos_de_estudo, ano, media_anos_de_estudo, X2012:X2021, convert = TRUE)
media_anos_de_estudo$ano <- gsub('X', '', media_anos_de_estudo$ano)
media_anos_de_estudo <- transform(media_anos_de_estudo, ano = as.numeric(ano))
media_anos_de_estudo <- transform(media_anos_de_estudo, media_anos_de_estudo = as.numeric(media_anos_de_estudo))



indice_gini <- read_excel("indice_gini.xlsx")
indice_gini <- gather(indice_gini, ano, indice_gini, X2012:X2021, convert = TRUE)
indice_gini$ano <- gsub('X', '', indice_gini$ano)
indice_gini <- transform(indice_gini, ano = as.numeric(ano))
indice_gini <- transform(indice_gini, indice_gini = as.numeric(indice_gini))



ind_theil_L <- read_excel("ind_theil_L.xlsx")
ind_theil_L <- gather(ind_theil_L, ano, ind_theil_L, X2012:X2021, convert = TRUE)
ind_theil_L$ano <- gsub('X', '', ind_theil_L$ano)
ind_theil_L <- transform(ind_theil_L, ano = as.numeric(ano))
ind_theil_L <- transform(ind_theil_L, ind_theil_L = as.numeric(ind_theil_L))



analfabetismo_25_anos <- read_excel("analfabetismo_25_anos.xlsx")
analfabetismo_25_anos <- gather(analfabetismo_25_anos, ano, analfabetismo_25_anos, X2012:X2021, convert = TRUE)
analfabetismo_25_anos$ano <- gsub('X', '', analfabetismo_25_anos$ano)
analfabetismo_25_anos <- transform(analfabetismo_25_anos, ano = as.numeric(ano))
analfabetismo_25_anos <- transform(analfabetismo_25_anos, analfabetismo_25_anos = as.numeric(analfabetismo_25_anos))



analfabetismo_18_anos <- read_excel("analfabetismo_18_anos.xlsx")
analfabetismo_18_anos <- gather(analfabetismo_18_anos, ano, analfabetismo_18_anos, X2012:X2021, convert = TRUE)
analfabetismo_18_anos$ano <- gsub('X', '', analfabetismo_18_anos$ano)
analfabetismo_18_anos <- transform(analfabetismo_18_anos, ano = as.numeric(ano))
analfabetismo_18_anos <- transform(analfabetismo_18_anos, analfabetismo_18_anos = as.numeric(analfabetismo_18_anos))



analfabetismo_15_anos <- read_excel("analfabetismo_15_anos.xlsx")
analfabetismo_15_anos <- gather(analfabetismo_15_anos, ano, analfabetismo_15_anos, X2012:X2021, convert = TRUE)
analfabetismo_15_anos$ano <- gsub('X', '', analfabetismo_15_anos$ano)
analfabetismo_15_anos <- transform(analfabetismo_15_anos, ano = as.numeric(ano))
analfabetismo_15_anos <- transform(analfabetismo_15_anos, analfabetismo_15_anos = as.numeric(analfabetismo_15_anos))



IDHM <- read_excel("IDHM.xlsx")
IDHM <- gather(IDHM, ano, IDHM, X2012:X2021, convert = TRUE)
IDHM$ano <- gsub('X', '', IDHM$ano)
IDHM <- transform(IDHM, ano = as.numeric(ano))
IDHM <- transform(IDHM, IDHM = as.numeric(IDHM))

## para cada indicator, conta número de linhas e o número total de NULLS e divide NULLS pela linha para obter a % de NULLS para indicador


print(paste0("renda_per_capita"))
renda_per_capita.na <- as.data.frame(sum(is.na(renda_per_capita$renda_per_capita)))
renda_per_capita.n <- as.data.frame(nrow(renda_per_capita))
renda_per_capita.na$`sum(is.na(renda_per_capita$renda_per_capita))`/renda_per_capita.n$`nrow(renda_per_capita)`*100


print(paste0("sub_esco_pop"))
sub_esco_pop.na <- as.data.frame(sum(is.na(sub_esco_pop$sub_esco_pop)))
sub_esco_pop.n <- as.data.frame(nrow(sub_esco_pop))
sub_esco_pop.na$`sum(is.na(sub_esco_pop$sub_esco_pop))`/sub_esco_pop.n$`nrow(sub_esco_pop)`*100


print(paste0("sub_freq_esco"))
sub_freq_esco.na <- as.data.frame(sum(is.na(sub_freq_esco$sub_freq_esco)))
sub_freq_esco.n <- as.data.frame(nrow(sub_freq_esco))
sub_freq_esco.na$`sum(is.na(sub_freq_esco$sub_freq_esco))`/sub_freq_esco.n$`nrow(sub_freq_esco)`*100



print(paste0("esperança_de_vida"))
esperança_de_vida.na <- as.data.frame(sum(is.na(esperança_de_vida$esperança_de_vida)))
esperança_de_vida.n <- as.data.frame(nrow(esperança_de_vida))
esperança_de_vida.na$`sum(is.na(esperança_de_vida$esperança_de_vida))`/esperança_de_vida.n$`nrow(esperança_de_vida)`*100


print(paste0("porcent_pobres"))
porcent_pobres.na <- as.data.frame(sum(is.na(porcent_pobres$porcent_pobres)))
porcent_pobres.n <- as.data.frame(nrow(porcent_pobres))
porcent_pobres.na$`sum(is.na(rporcent_pobres$porcent_pobres))`/porcent_pobres.n$`nrow(porcent_pobres)`*100



print(paste0("população_total"))
população_total.na <- as.data.frame(sum(is.na(população_total$população_total)))
população_total.n <- as.data.frame(nrow(população_total))
população_total.na$`sum(is.na(população_total$população_total))`/população_total.n$`nrow(população_total)`*100



print(paste0("mortalidade_infantil"))
mortalidade_infantil.na <- as.data.frame(sum(is.na(mortalidade_infantil$mortalidade_infantil)))
mortalidade_infantil.n <- as.data.frame(nrow(mortalidade_infantil))
mortalidade_infantil.na$`sum(is.na(mortalidade_infantil$mortalidade_infantil))`/mortalidade_infantil.n$`nrow(mortalidade_infantil)`*100



print(paste0("media_anos_de_estudo"))
media_anos_de_estudo.na <- as.data.frame(sum(is.na(media_anos_de_estudo$media_anos_de_estudo)))
media_anos_de_estudo.n <- as.data.frame(nrow(media_anos_de_estudo))
media_anos_de_estudo.na$`sum(is.na(media_anos_de_estudo$media_anos_de_estudo))`/media_anos_de_estudo.n$`nrow(media_anos_de_estudo)`*100



print(paste0("indice_gini"))
indice_gini.na <- as.data.frame(sum(is.na(indice_gini$indice_gini)))
indice_gini.n <- as.data.frame(nrow(indice_gini))
indice_gini.na$`sum(is.na(indice_gini$indice_gini))`/indice_gini.n$`nrow(indice_gini)`*100


print(paste0("ind_theil_L"))
ind_theil_L.na <- as.data.frame(sum(is.na(ind_theil_L$ind_theil_L)))
ind_theil_L.n <- as.data.frame(nrow(ind_theil_L))
ind_theil_L.na$`sum(is.na(ind_theil_L$ind_theil_L))`/ind_theil_L.n$`nrow(ind_theil_L)`*100



print(paste0("analfabetismo_25_anos"))
analfabetismo_25_anos.na <- as.data.frame(sum(is.na(analfabetismo_25_anos$analfabetismo_25_anos)))
analfabetismo_25_anos.n <- as.data.frame(nrow(analfabetismo_25_anos))
analfabetismo_25_anos.na$`sum(is.na(analfabetismo_25_anos$analfabetismo_25_anos))`/analfabetismo_25_anos.n$`nrow(analfabetismo_25_anos)`*100



print(paste0("analfabetismo_18_anos"))
analfabetismo_18_anos.na <- as.data.frame(sum(is.na(analfabetismo_18_anos$analfabetismo_18_anos)))
analfabetismo_18_anos.n <- as.data.frame(nrow(analfabetismo_18_anos))
analfabetismo_18_anos.na$`sum(is.na(analfabetismo_18_anos$analfabetismo_18_anos))`/analfabetismo_18_anos.n$`nrow(analfabetismo_18_anos)`*100



print(paste0("analfabetismo_15_anos"))
analfabetismo_15_anos.na <- as.data.frame(sum(is.na(analfabetismo_15_anos$analfabetismo_15_anos)))
analfabetismo_15_anos.n <- as.data.frame(nrow(analfabetismo_15_anos))
analfabetismo_15_anos.na$`sum(is.na(analfabetismo_15_anos$analfabetismo_15_anos))`/analfabetismo_15_anos.n$`nrow(analfabetismo_15_anos)`*100



print(paste0("IDHM"))
IDHM.na <- as.data.frame(sum(is.na(IDHM$IDHM)))
IDHM.n <- as.data.frame(nrow(IDHM))
IDHM.na$`sum(is.na(IDHM$IDHM))`/IDHM.n$`nrow(IDHM)`*100

#criar data frame único com os indicadores IDHM.AED e IDHM.df

IDHM.AED = renda_per_capita
IDHM.AED <- join(IDHM.AED, sub_esco_pop, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, sub_freq_esco, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, esperança_de_vida, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, porcent_pobres, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, população_total, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, mortalidade_infantil, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, media_anos_de_estudo, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, indice_gini, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, ind_theil_L, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, analfabetismo_25_anos, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, analfabetismo_18_anos, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, analfabetismo_15_anos, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))
IDHM.AED = join(IDHM.AED, IDHM, by = c("ano" = "ano", "Territorialidades" = "Territorialidades"))



AED.df = IDHM.AED



# Verificar que o número de estados continua os mesmos e o data frame está correto


sapply(AED.df, function(x) length(unique(x)))

str(AED.df)

#AED.df é o data frame usado na etapa de análise exploratória de dados.
# This final data frame (AED.df) will be used for the next step, exploratory data analysis.

