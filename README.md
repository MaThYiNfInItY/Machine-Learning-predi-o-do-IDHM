---
title: "APLICAÇÃO DO MACHINE LEARNING NA PREVISÃO DE ÍNDICES ECONÔMICOS: O IDHM COM O MODELO RANDOM FOREST DE 2012 À 2021. DOI: 10.13140/RG.2.2.36759.55204"
author: "Matheus Assis de Oliveira"
date: "2023-12-03"
output:
  pdf_document: default
  html_document: default
editor_options:
  markdown:
    wrap: sentence
---

---
Tese disponível em: https://www.researchgate.net/publication/375992831_APLICACAO_DO_MACHINE_LEARNING_NA_PREVISAO_DE_INDICES_ECONOMICOS_O_IDHM_COM_O_MODELO_RANDOM_FOREST_DE_2012_A_2021


1.  **INTRODUÇÃO**

O ritmo acelerado do desenvolvimento tecnológico na era digital tem permeado todas as esferas da sociedade, transformando setores inteiros da economia, alterando padrões de comportamento social e abrindo novas possibilidades para a pesquisa e o avanço do conhecimento.

Uma das áreas de destaque é a Inteligência Artificial (IA), especialmente o ramo do Aprendizado de Máquina (Machine Learning - ML).
As técnicas de ML estão sendo cada vez mais utilizadas em uma variedade de campos de estudo para encontrar padrões em dados complexos e fazer previsões precisas.

No campo da economia, o ML vem ganhando relevância, visto que a quantidade de artigos científicos e trabalhos acadêmicos acerca do Aprendizado de Máquina na economia ainda é limitado, mas em crescimento.
Com sua aplicação variando desde a previsão de preços de ações, ou indicadores e demais variáveis econômicas até a avaliação de políticas econômicas.

Uma das principais economistas que lideraram essa área da econometria é Susan Athey, cujos trabalhos sobre os impactos do ML na economia têm atraído o interesse ao uso dessas técnicas em estudos econômicos.
Seus trabalhos, analisando o impacto do ML na economia (Athey, 2019) e os métodos de aplicação do Machine Learning que auxiliariam economistas (Athey, Imbens, 2019), servem como referências fundamentais, proporcionando uma visão geral das técnicas de ML que são mais relevantes para os economistas, e as vantagens de suas aplicações.
No artigo sobre o impacto do ML na economia Athey debate a dificuldade inicial em se definir Machine Learning, segundo ela:

"O termo pode ser (e tem sido) usado de forma ampla ou restrita; pode referir-se a uma coleção de subcampos da ciência da computação, mas também a um conjunto de tópicos que são desenvolvidos e usados na ciência da computação, na engenharia, na estatística e, cada vez mais, nas ciências sociais".
Susan Athey (2019).

Os índices econômicos, ferramentas para a compreensão e avaliação de economias em diferentes níveis, fornecem uma medida quantitativa de vários aspectos econômicos, como crescimento, inflação, desemprego, desenvolvimento humano, entre outros.

Dois índices usados no Brasil são o Índice de Desenvolvimento Humano (IDH) e o Índice Firjan de Desenvolvimento Municipal (IFDM).
O IDH, desenvolvido pelo Programa das Nações Unidas para o Desenvolvimento (PNUD), com publicação anual do Human Development Report (CONCEIÇÃO, 2022), (o mais recente de 2021/2022 dirigido por Pedro Conceição), mede a média de três dimensões básicas do desenvolvimento humano: vida longa e saudável, acesso ao conhecimento e um padrão de vida decente.

Já o IFDM, desenvolvido pela Firjan até o ano de 2018, é um indicador brasileiro que mede a qualidade de vida em todos os municípios brasileiros em três áreas: emprego e renda, educação e saúde conforme em sua Metodologia (2018) disponível no site da Firjan.

A pesquisa em econometria aplicada tem explorado o uso de técnicas de ML para aprimorar e expandir as possibilidades de análise dos índices econômicos.
Por exemplo, Luke Sherman (SHERMAN et al., 2023) usou imagens de satélite e ML para estimar o IDH em todo o mundo com alta resolução.
Da mesma forma, Noor Ell Goldameir (GOLDAMEIR et al., 2021) aplicaram o método Bootstrap Aggregating para classificar o IDH na Indonésia.
Tobaigy (Tobaigy et al.,2019) usaram técnicas de ML para determinar e classificar os fatores significativos que afetam o IDH.

O artigo de Sendhil Mullainathan e Jann Spiess (MULLAINATHAN; SPIESS, 2017) enfatizam a integração do aprendizado de máquina com a econometria, demonstrando como as técnicas de aprendizado de máquina podem ser aplicadas para resolver problemas complexos em diversos campos, incluindo economia, saúde e meio ambiente.
A abordagem dos autores explora a aplicação de algoritmos de aprendizado de máquina em dados econômicos e políticos, um campo tradicionalmente dominado por métodos estatísticos mais convencionais.

Um artigo publicado no Journal of Economic Perspectives oferece uma visão sobre o uso de imagens de satélite para o estudo da economia (DONALDSON; STOREYGARD, 2016) , a integração de dados de sensoriamento remoto com a pesquisa econômica.

Outro artigo a ser considerado destaca a relevância do Machine Learning na predição volatilidade do mercado de criptomoedas apresenta um desafio intrigante para analistas e investidores (BHATTAD et al., 2023).

O artigo de Shubham Bhattad, Stefin Sunnymon, Dallas Vaz e Prof. Chhaya Dhavale, analisa de diversos modelos de aprendizado de máquina, com o objetivo de identificar as técnicas mais eficazes para prever os preços das criptomoedas.
Esta abordagem é particularmente pertinente, considerando a crescente popularidade e a natureza imprevisível das criptomoedas destacado pelos autores.

A integração do Machine Learning no estudo econométrico representa a introdução de uma nova técnica para buscar a compreensão e análise dos fenômenos econômicos.
Por meio de algoritmos de aprendizado de máquina, com a possibilidade de explorar e capturar padrões complexos em grandes conjuntos de dados econômicos, obtendo insights mais precisos e robustos.

A modelagem de séries temporais econômicas, a seleção de variáveis relevantes, detecção de outliers e a previsão de demanda são exemplos de áreas em que o Machine Learning pode contribuir.
No entanto, a aplicação bem-sucedida do Machine Learning na econometria requer que haja, combinação de conhecimentos em econometria e ciência de dados, bem como uma interpretação consistente dos resultados à luz das teorias econômicas subjacentes.

A uma análise das técnicas de aprendizado de máquina aplicadas na previsão de preços de ações (SONI; TEWARI; KRISHNAN, 2022).
O trabalho destaca uma abordagem sistemática que explora um campo complexo e em constante evolução.
O artigo estabelece a importância da previsão do mercado de ações, não apenas para investidores, mas também para analistas de dados e profissionais nos campos de Machine Learning (ML) e Inteligência Artificial (AI).

A previsão de preços de ações utilizando algoritmos de aprendizado profundo "Deep Learning" (NIKOU; MANSOURFAR; BAGHERZADEH, 2019) e sua comparação com outros métodos de aprendizado de máquina.
O estudo de Mahla Nikou, Gholamreza Mansourfar e Jamshid Bagherzadeh é relevante ao estudo atual, em que demonstra a capacidade do aprendizado de máquina prever tendências de mercado com precisão pode significar uma grande vantagem competitiva.

Uma abordagem do ML à predição de preços de ações (SONI; TEWARI; KRISHNAN, 2022) advindo da Universidade de Manitoba, Canadá, demonstra a aplicação de técnicas de aprendizado de máquina no campo da inteligência empresarial, com um foco especial na previsão de preços de ações.
O artigo propõe uma abordagem utilizando máquinas de vetores de suporte estruturais (SSVMs) para prever movimentos de preços de ações.

Outros trabalhos internacionais também descrevem a eficiência do Machine Learning em previsões, como a movimentos de preços de ações no setor de energia alemão utilizando aprendizado de máquina (Vogt, 2021).
A pesquisa de Vogt utiliza modelos específicos de aprendizado de máquina, incluindo Gradient Boosted Regression Tree, Multilayer Perceptron e Long Short-Term Memory, para prever o preço de fechamento das ações no dia seguinte.
Esses modelos foram escolhidos por sua capacidade de capturar complexidades nos dados e potencial para lidar com a natureza não linear dos mercados financeiros.

Outro estudo concentrou na aplicação de técnicas de Machine Learning para analisar o papel do capital humano nas startups.
O estudo de Brigo começa com a criação de um dataset robusto, selecionando aleatoriamente 8731 indivíduos e suas 4753 startups de um banco de dados inicial de 18.000 nomes e 10.203 empresas ( Brigo, 2019).

Uma análise sobre a previsão de preços de ações utilizando redes neurais Long Short-Term Memory (LSTM) e Gated Recurrent Unit (GRU), concentrando no índice S&P 500, um dos mais importantes e representativos do mercado de ações (PESCI, 2021).
Contribuindo para o campo da análise financeira, demonstrando o potencial das redes neurais LSTM e GRU em aplicações práticas no mercado de ações.

Um estudo de Semyannikov Gleb Valeryevich (СЕМЯННИКОВ Г.В.) analisando o desempenho de algoritmos de aprendizado de máquina em comparação com o índice S&P 500, em que resultados mostram que o algoritmo supera o desempenho do índice S&P 500 (СЕМЯННИКОВ, 2020).
O processo de implementação desses modelos é descrito, a partir organização de conjuntos de dados, seguido pelo treinamento e ajuste dos algoritmos, e finalmente testando-os contra conjuntos de dados reais.
O artigo destaca a eficácia desses modelos ao comparar seus resultados com o desempenho real de ativos financeiros.

Outro estudo russo ressaltou a eficácia do aprendizado de máquina, e em particular do modelo Facebook Prophet, na previsão de preços de ações (Агнон Х.О.. 2021).
A alta precisão alcançada pelo modelo demonstra seu potencial como uma ferramenta valiosa para investidores e analistas de mercado.
Além disso, a criação da ferramenta "Stockers", que incorpora o algoritmo FB Prophet, destaca a aplicabilidade prática dos resultados do estudo no mundo real.

O objetivo deste estudo é demonstrar como utilizar um modelo simples de predição com ML, aplicado no IDHM, um indicador conhecido, principalmente no campo da economia regional, para demonstrar a prática da aplicação de uma técnica de predição de ML no estudo econométrico.

Especificamente o objetivo é demonstrar como preparar, montar e aplicar um modelo introdutório de Machine Learning Random Forest com regressões ao IDHM e seus componentes na Linguagem de programação R, para fazer predições do índice através de uma base de dados dívida em dados para treino e teste do modelo, com a disposição dos códigos, para auxiliar estudantes de economia a iniciando seus estudos de ML tenham um primeiro de exemplo simples para aplicar.

A aplicação de ML à indicadores econômicos não se limita à predição, mas também há possibilidade de obter insights valiosos sobre as características dos índices e a maneira como eles interagem entre si.

Além disso, o uso de ML também pode ajudar a identificar fatores que são particularmente importantes para o desenvolvimento econômico e que podem ser alvo de políticas públicas para melhorar a qualidade de vida e o bem-estar econômico.

O método proposto neste estudo consiste de maneira prática apenas em aplicar o algoritmo de aprendizado de máquina Random Forest com regressão, aos componentes do IDHM.
O Random Forest é um algoritmo de aprendizado supervisionado que é particularmente adequado para lidar com conjuntos de dados complexos e multidimensionais.

Ele é capaz de capturar interações complexas entre variáveis e obter uma medida de importância variável, evitando torná-lo muito complexo, ou treiná-lo excessivamente até o ponto dele se ajustar aos dados absorvendo até mesmo os ruídos.
O modelo Random Forest é capaz de evitar o Overfitting, o que o torna útil para entender quais componentes do IDHM são os mais importantes para o desenvolvimento econômico.

No estudo, utilizou-se o modelo de florestas de árvores com entradas aleatórias desenvolvido por Andy Liaw e Matthew Wiener (LIAW; WIENER, 2002), baseado no modelo de Breiman (BREIMAN, 2001), e importado para o R.

Ao longo do trabalho, será examinada uma literatura relevante para o contexto da pesquisa.
Serão explorados trabalhos de economistas que aplicaram técnicas de ML à economia, como Susan Athey, Guido Imbens e Hal Varian.
Também serão examinadas pesquisas que aplicaram ML à indicadores de desenvolvimento, mais especificamente o IDH, e aplicações do ML em previsões de preços do setor de energia alemão, criptomoedas e preços de ações de empresas.

Espera-se com este trabalho destacar o potencial e a aplicabilidade do aprendizado de máquina na economia, especificamente na criação e análise de índices econômicos, contribuindo para o corpo de literatura que destaca o uso do ML na economia e fornecendo um exemplo introdutório de uma técnica para auxílio da análise e compreensão da compreensão acerca do campo econômico.

A predição de um índice baseado em ML apresenta uma ferramenta para os formuladores de políticas públicas.
O campo de aplicação do ML na economia está a amadurecer, apresentando novas técnicas e abordagens desenvolvidas continuamente.

Portanto, embora este estudo utilize o algoritmo Random Forest, futuras pesquisas podem explorar o uso de outros algoritmos e técnicas de ML para analisar indicadores econômicos, e demais variáveis econômicas, bem como contribuir com um novo ferramental para a econometria.

Por último, a pesquisa realizada neste estudo também visa contribuir para a disseminação do conhecimento sobre o uso do ML na economia.
Através da apresentação clara e acessível da metodologia com os códigos utilizados, estes sendo uma adaptação do desenvolvido por Julie Anne Hockensmith (ANNE, 2020), no Github, buscando tornar a aplicação de ML na economia mais compreensível e acessível.

Anne utilizou o pacote WDI (AREL-BUNDOCK; BACHER, 2022), com a versão atual 2.7.8 de setembro de 2022 para obter dados do Banco Mundial, sobre o IDH e demais indicadores, no desenvolvimento do modelo é feito uma divisão de 90%/10% entre os dados para treino e teste, diferindo do particionamento normalmente usados de 80% para treino e 20% para teste.

Em resumo, este estudo se propõe a explorar o uso do aprendizado de máquina na predição de um índice econômico, com o objetivo de servir como um manual introdutório ao uso do Machine Learning, aplicando um parâmetro conhecido no campo do Machine Learning, em um indicador conhecido na área da economia e outros campos das ciências humanas como o caso da geografia.

No decorrer deste trabalho, buscar-se-á contribuir para o campo da economia, adicionando à literatura sobre a aplicação do ML na economia um ferramental prático e valioso para os formuladores de políticas públicas e profissionais da área econômica e afins como geografia e estatística.

2.  **REVISÃO DE LITERATURA**

A aplicação de técnicas de aprendizado de máquina no campo econômico tem sido uma área atraente para acadêmicos e profissionais.
Os métodos de aprendizado de máquina, como Random Forest, são amplamente usados para lidar com a complexidade e a multicolinearidade de conjuntos de dados de alta dimensão, tornando-os úteis para a análise de indicadores econômicos e de desenvolvimento.

A revisão da literatura concentra trabalhos anteriores que exploraram a aplicação do aprendizado de máquina no estudo econômico, especialmente a área da econometria, além dos estudos na predição de indicadores, nem sempre econômicos, mas com sua possível sua utilização na área econômica com sua metodologia.
Através desta revisão, espera-se entender melhor o estado atual do campo e identificar lacunas na literatura existente que o trabalho poderá preencher.

Como notável exemplo do crescente uso do aprendizado de máquina na economia, Hal Ronald Varian, economista-chefe da Google Inc., e professor emérito de economia da University of California, Berkeley, destacou a importância do Big Data e das novas técnicas econométricas em seu artigo em que destaca o Big Data como um novo truque para economistas (VARIAN, 2014).

Embora este trabalho não esteja diretamente relacionado à predição de indicadores, ele ilustra a importância do aprendizado de máquina na economia e a necessidade de os economistas se familiarizar com essas técnicas de aprendizado de máquina.

Variam descreve na página 6 do artigo o funcionamento do Machine Learning em que as variáveis x chamadas de "preditoras", como "características" em alguns casos, e o fim do ML é encontrar a função que forneça uma boa previsão de "y" como função de "x".
Ele define a boa previsão como sendo a que minimiza o erro em uma função de perda.

Varian debate também o uso de ferramentas de banco de dados como o SQL, "linguagem de consulta estruturada", como ferramenta para manipulação de Big Data, ferramentas para análise como o Google File System e o Bigquery.
Entrando no escopo do ML Hal Varian descreve o modelo de Classificação e Random Forest, um exemplo na economia utilizando dados de Xavier Sala-i-Martín (1997).

A literatura sobre a aplicação de técnicas de aprendizado de máquina na economia está em seu nascituro nos últimos anos, contando com a influência de Susan Athey, professora de Economia da Tecnologia na Escola de Humanidades e Ciências da Stanford Graduate School of Business, anterior a seu ingresso em Stanford lecionou na Harvard University e no Massachusetts Institute of Technology (MIT), uma das principais pesquisadoras e especialista na integração do ML no estudo da ciência econômica.

Athey em seu artigo sobre os impactos do ML na economia publicado em 2018, discute os desafios e as oportunidades do uso do aprendizado de máquina em pesquisas econômicas.
Athey destaca que, embora a aprendizagem de máquinas possa auxiliar na previsão e na identificação de padrões complexos em grandes conjuntos de dados, também apresenta desafios, como a tendência ao sobre ajuste e a dificuldade de interpretação.
Athey sugere que uma abordagem que combine métodos econômicos e de aprendizado de máquina pode oferecer as melhores oportunidades para avançar a pesquisa econômica.

Para Athey, "o aprendizado de máquina é um campo que desenvolve algoritmos projetados para serem aplicados a conjuntos de dados, com as principais áreas de foco sendo previsão (regressão), classificação e tarefas de agrupamento ou agrupamento." Athey destaca a divisão nos dois ramos principais do ML, o supervisionado e o não supervisionado.

O ML não supervisionado envolvendo a procura por encontrar grupos de observações semelhantes em suas covariáveis e a possibilidade de serem interpretados como redução de dimensionalidade.
Dentre as técnicas destacam-se o agrupamento k-means, modelagem de tópicos, métodos de detecção de comunidade para redes e entre outras técnicas.

O modelo não supervisionado detém de uma saída de modelo típico de ML própria, conforme Athey descreve: "...é uma partição do conjunto de observações, onde as observações dentro de cada elemento da partição são semelhantes de acordo com alguma métrica; ou um vetor de probabilidades ou pesos que descreve uma mistura de tópicos ou grupos aos quais uma observação pode pertencer".
Susan Athey (2019).

A revisão de literatura irá explorar mais profundamente a aplicação do aprendizado de máquina na análise de indicadores, revisando as metodologias usadas e os resultados obtidos.
Ao fazer isso, espera-se compreender melhor o estado atual do campo das ferramentas econômicas e identificar lacunas na literatura existente para o trabalho poder preencher.

Guido Imbens, economista neerlandês - americano e professor de economia da escola de Negócios da Universidade de Stanford e laureado do Prémio de Ciências Económicas em Memória de Alfred Nobel em 2021, discutiu os impactos e potencialidades do aprendizado de máquina na economia.

Athey e Imbens (2019), escrevem um artigo destacando métodos de aplicação do ML em que economistas deveriam saber, também fornecem uma visão abrangente dos métodos de aprendizado de máquina relevantes para os economistas.
Athey e Imbens exploram o modo como essas técnicas podem ser usadas para abordar questões econômicas, incluindo aquelas relacionadas ao desenvolvimento humano.

Este trabalho destaca o quão importante é entender e aplicar corretamente as técnicas de aprendizado de máquina no estudo econômico, e o fornecimento de contextos valiosos para o uso dos métodos na previsão de variáveis econômicas.
Outro trabalho, uma contribuição notável vem de Maninder Kaur (KAUR et al., 2019).
Em seu estudo, os autores aplicam técnicas de aprendizado de máquina supervisionado para prever o Índice de Qualidade de Vida de várias nações.

Os autores demonstram que os modelos de aprendizado de máquina, como a regressão logística e a floresta aleatória, além dos modelos adicionais para comparação como o modelo cubist, elastic net, redes neurais e máquina de vetores de suporte.
Os modelos foram comparados analisando o R2, a raiz quadrática média dos erros RMSE e a precisão que os modelos atingiram na análise, fornecendo assim ferramentas poderosas para análise de políticas e planejamento de desenvolvimento.

No artigo de Kaur os modelos árvores de decisão, redes neurais, floresta aleatória e máquinas de vetores de suporte apresentaram maior acurácia dentre os modelos.

Outro estudo importante no campo é o de Ozden e Guleryuz (2021).
No artigo os autores aplicaram algoritmos de aprendizado de máquina otimizados para analisar a relação entre o desenvolvimento econômico e o capital humano.
Este estudo destaca a habilidade dos algoritmos de aprendizado de máquina em capturar relações complexas em conjuntos de dados econômicos, fornecendo insights valiosos para o desenvolvimento de políticas.

Sherman et al. (2023) também contribuíram significativamente para este campo de pesquisa em seu estudo empregam uma abordagem em certo grau inovador combinando imagens de satélite e técnicas de aprendizado de máquina para gerar estimativas de alta resolução do Índice de Desenvolvimento Humano (IDH) das Nações Unidas.
Esse estudo demonstra o poder das técnicas de aprendizado de máquina quando combinadas com dados espaciais complexos e grandes conjuntos de dados, abrindo novas possibilidades para a análise e monitoramento do desenvolvimento humano em nível global.

Tobaigy, Alamoudi e Bafail (2023) contribuíram com uma análise útil dos principais fatores que determinam e classificam o Índice de Desenvolvimento Humano (IDH) em seu artigo.
Os autores realizaram uma análise estatística aprofundada para identificar os principais determinantes do IDH e classificá-los em termos de significância.
Este estudo fornece insights valiosos sobre as variáveis que podem ser mais influentes na previsão do IDH e, portanto, podem ser úteis na construção de modelos de aprendizado de máquina precisos para a previsão do IDH.
Este estudo fornece um ferramental poderoso para classificar os fatores determinantes do indicador a ser construído com o IDH.

O artigo de Arumnisaa e Wijayanto (2023) contribui para a literatura do ML na economia, ao comparar diferentes métodos de aprendizado de máquina, especificamente Random Forest, Support Vector Machine (SVM) e AdaBoost, na classificação do Índice de Desenvolvimento Humano (IDH).
Esta abordagem possui certa originalidade, uma vez que o IDH é um indicador amplamente usado para medir o desenvolvimento socioeconômico dos países e pode ter uma complexa relação multivariada que métodos de aprendizado de máquina são bem equipados para explorar.

Os autores constatam que o uso de técnicas de aprendizado de máquina para modelar e prever o IDH tem várias vantagens potenciais, incluindo a capacidade de capturar relações não-lineares e complexas, além da flexibilidade para lidar com grandes conjuntos de dados.

Essa descoberta é consistente com as pesquisas anteriores de Athey e Imbens (2019), que destacam a utilidade do aprendizado de máquina na economia.
O artigo acrescenta a esta literatura, demonstrando a aplicabilidade dessas técnicas ao IDH, um indicador econômico chave.

As pesquisas revisadas convergem na aplicação de métodos de aprendizado de máquina (ML) para melhor entender e modelar índices econômicos e sociais, comumente o IDH.
O uso de técnicas de ML, particularmente o Random Forest, Support Vector Machine (SVM) e AdaBoost, na modelagem de indicadores de desenvolvimento tem provado ser vantajoso em fornecer insights não lineares e complexos que não são tão facilmente capturados por métodos estatísticos tradicionais.

Athey e Imbens (2019) forneceram uma revisão ampla sobre os métodos de ML que os economistas deveriam conhecer, enquanto Sherman et al. (2023) e Arumnisaa e Wijayanto (2023) aplicaram essas técnicas para melhor entender e estimar o IDH.
Ozden e Guleryuz (2021) e Tobaigy et al. (2023) também contribuíram com pesquisas na exploração da relação entre o desenvolvimento econômico e o capital humano, assim como a determinação e classificação dos fatores significativos do IDH, respectivamente.

Outro campo em que o ML tem sido explorado são as criptomoedas e o mercado de ações, em que o ML treinado com modelos de series temporais para previsão de preços tem gerado estudos acadêmicos na área.
O artigo, conduzido por Bhattad et al, mergulha na análise de diversos modelos de aprendizado de máquina, com o objetivo de identificar as técnicas mais eficazes para prever os preços das criptomoedas (BHATTAD et al., 2023).
Esta abordagem é pertinente, considerando a natureza das criptomoedas.

A metodologia adotada pelos autores desenvolve uma análise comparativa de vários estudos, onde diferentes modelos de aprendizado de máquina foram aplicados na previsão de preços de criptomoedas.
Entre os modelos analisados estão o Prophet, ARIMA, LSTM, XGBoost, SVM, Regressão Logística e Naive Bayes.
Esta variedade de modelos ofereceu uma visão abrangente das capacidades de cada técnica no contexto do mercado de criptomoedas.

Um aspecto crucial da predição de preços de ações com a abordagem do Machine Learning (SONI; TEWARI; KRISHNAN, 2022) é a discussão sobre os desafios enfrentados nas metodologias existentes.
Este não apenas identifica as limitações, mas também aponta direções para pesquisas futuras, sugerindo a integração de diversas fontes de dados e a melhoria da precisão e confiabilidade dos modelos preditivos.

Os autores não se limitaram a discutir técnicas tradicionais de aprendizado de máquina, como Regressão Linear e SVM apenas, mas também abordam métodos mais avançados, como Redes Neurais, AI e Aprendizado Profundo.
Esta seção fornece uma comparação entre diferentes abordagens, destacando suas forças e limitações.
O artigo conclui enfatizando a necessidade contínua de abordagens destas técnicas na previsão de preços de ações.

A importância dos índices de segurança como ferramentas principais para avaliar o estado dos mercados financeiros, dada a natureza não linear e não estacionária das séries financeiras, a previsão se torna um desafio complexo (NIKOU; MANSOURFAR; BAGHERZADEH, 2019).
O estudo de Nikou et al, utiliza dados diários do preço de fechamento do fundo negociado em bolsa iShares MSCI United Kingdom, de janeiro de 2015 a junho de 2018, para testar a eficácia de quatro modelos de algoritmos de aprendizado de máquina na previsão de preços de ações.

Os resultados indicam que o método de aprendizado profundo supera os outros métodos em termos de precisão na previsão, com a regressão vetorial de suporte (support vector regression - SVR) classificando-se em segundo lugar, seguida pela rede neural e pelo método de floresta aleatória, ambos com menor erro.
Esses achados são significativos, pois demonstram a superioridade do aprendizado profundo sobre métodos tradicionais em um campo tão volátil e imprevisível quanto o mercado de ações.

O estudo utiliza uma abordagem rigorosa para testar e comparar os diferentes modelos.
A escolha dos dados, abrangendo um período significativo e focando em um fundo específico, fornece uma base sólida para a análise.
Além disso, a utilização de critérios de avaliação de erro, como o erro médio absoluto (MAE), o erro quadrático médio (MSE) e o erro quadrático médio da raiz (RMSE), adiciona credibilidade aos resultados.

Outro estudo propõem uma abordagem utilizando máquinas de vetores de suporte estruturais (SSVMs) para prever movimentos de preços de ações (SONI; TEWARI; KRISHNAN, 2022).
A abordagem tem a capacidade de classificar entradas complexas, como nós em uma estrutura de gráfico, que conectam empresas no setor de tecnologia da informação.

Os resultados experimentais apresentados no artigo são particularmente impressionantes.
Os autores testaram seu modelo em um conjunto de dados do setor de Tecnologia da Informação do Índice S&P 500, utilizando dados financeiros e movimentos de preços de ações.
A precisão do SSVM em amostras de treinamento foi superior a 78%, o que indica uma aprendizagem bem-sucedida do modelo sem superajuste.
Este nível de precisão é promissor, sugerindo que a abordagem pode ser uma ferramenta valiosa para previsões no mercado de ações.

Um artigo publicado no Science Journal da AAAS, apresenta uma proposta para estimar a pobreza em países em desenvolvimento (JEAN et al., 2016).
O estudo utiliza dados de pesquisa e imagens de satélite de cinco países africanos - Nigéria, Tanzânia, Uganda, Malawi e Ruanda.
Os autores treinaram uma rede neural convolucional para identificar características de imagem que explicam até 75% da variação nos resultados econômicos locais.

O artigo também demonstra como técnicas avançadas de aprendizado de máquina podem ser aplicadas em um contexto com dados de treinamento limitados, sugerindo uma ampla aplicação potencial em muitos domínios científicos.

O artigo aborda a escassez de dados confiáveis sobre meios de subsistência econômicos no mundo em desenvolvimento, o que dificulta o estudo desses resultados e a elaboração de políticas para melhorá-los.
Os autores destacam que, embora a quantidade e a qualidade dos dados econômicos em países em desenvolvimento tenham melhorado nos últimos anos, ainda há uma lacuna significativa de dados, especialmente na África.

Na literatura internacional o Machine Learning já fora explorado na previsão de preços de produtos, ações, criptomoedas e a avaliação do capital humano na probabilidade de sucesso de uma startup, neste quadro pesquisadores Alemão, Italianos e russos já desenvolveram pesquisas com Machine Learning no campo econômico.

Jan Vogt utiliza modelos específicos de aprendizado de máquina, incluindo Gradient Boosted Regression Tree, Multilayer Perceptron e Long Short-Term Memory, para prever o preço de fechamento das ações no dia seguinte (VOGT, J. 2021).
Esses modelos são escolhidos por sua capacidade de capturar complexidades nos dados e potencial para lidar com a natureza não linear dos mercados financeiros.

No entanto, os resultados do estudo indicam que, embora seja possível alcançar desvios na previsão de preços de ações de cerca de 1,05%, a análise de sentimentos das mídias sociais não apresentou um efeito significativo na redução do erro de previsão.
Isso sugere que, apesar do potencial das mídias sociais em refletir o sentimento do mercado, sua aplicabilidade direta na previsão de preços de ações, especialmente no setor de energia, pode ser limitada.

A eficácia dos modelos tratados no estudo de Vogt é, portanto, uma questão complexa.
Embora os modelos de aprendizado de máquina demonstrassem competência em prever movimentos de preços com uma margem de erro relativamente baixa, a integração da análise de sentimentos não melhorou significativamente a precisão das previsões.

O estudo de Francesco Brigo começou com a criação de um dataset robusto, selecionando aleatoriamente 8731 indivíduos e suas 4753 startups de um banco de dados inicial de 18.000 nomes e 10.203 empresas (BRIGO, F. 2019).
A fase de 'feature engineering' fora meticulosa, analisando parâmetros como experiência de trabalho anterior, formação acadêmica e histórico de fundação de empresas.
Essa abordagem multidimensional permitiu uma análise aprofundada do impacto do capital humano no sucesso das startups.

Os modelos de Machine Learning utilizados no estudo incluem regressão logística, árvores de decisão, Random Forest, k-Nearest Neighbors e redes neurais.
O estudo revelou que o modelo Random Forest se destaca em termos de eficácia, fornecendo insights significativos sobre as características mais influentes para o sucesso de uma startup.

A eficiência dos modelos foi avaliada com base em sua capacidade de prever corretamente o sucesso das startups.
O modelo Random Forest, em particular, demonstrou capacidade robusta de identificar as características mais críticas que contribuem para o sucesso de uma startup.
Isso não apenas valida a importância do capital humano como um fator crítico, mas também fornece uma ferramenta valiosa para investidores, mentores e fundadores de startups para avaliar e melhorar suas equipes.

Paolo Pesci desenvolveu três tipos de redes neurais em sua tese: LSTM, GRU e uma rede híbrida combinando LSTM e GRU, para avaliar qual delas seria mais eficaz na redução do erro de previsão em relação aos valores reais do preço de fechamento diário do índice e na previsão de preços futuros (PESCI, P. 2021).
Os modelos foram testados com diferentes configurações de parâmetros de treinamento, como número de épocas e tamanho do lote (batch size), para otimizar seu desempenho.

Os resultados mostraram que o modelo GRU necessitou de um menor número de épocas para ser treinado e apresentou um erro de aproximação muito pequeno.
No entanto, foi o modelo híbrido LSTM-GRU que obteve o menor erro médio de previsão, sugerindo que a combinação desses dois modelos pode levar a previsões futuras mais precisas.
Especificamente, o modelo híbrido apresentou um erro médio de previsão de 72,43 dólares, em comparação com 144,70 dólares para o modelo GRU e 176,22 dólares para o modelo LSTM.

Pesci concluiu que, embora o modelo híbrido tenha se mostrado mais eficaz, variações bruscas no preço das ações (como as causadas por guerras, pandemias, etc.) podem diminuir a precisão das previsões.
Essa conclusão destaca a complexidade inerente à previsão de preços de ações e a necessidade de considerar uma variedade de fatores externos ao desenvolver modelos de previsão.

Semyannikov discute o conceito de "ensemble learning", uma técnica que combina as forças de múltiplos algoritmos para aumentar a precisão das previsões (СЕМЯННИКОВ, 2020).
Esta abordagem é benéfica porque permite que o treinamento e o algoritmo de aprendizado ocorram de forma independente, com as previsões sendo combinadas para uma análise mais robusta.

Os resultados numéricos apresentados no artigo são detalhados, em relação à eficácia dos algoritmos de previsão.
Por exemplo, o autor menciona que a precisão dos algoritmos de aprendizado de máquina pode chegar a 77,6%.
Além disso, o artigo destaca a eficácia do uso de mineração de texto para analisar fluxos de notícias e avaliar o sentimento do mercado, o que pode levar a previsões eficazes de movimentos de preços de ações.

O artigo também apresenta uma tabela detalhada com as estimativas de desempenho para os top 50 sinais previstos.
Estes incluem: Top 30 sinais: Variações de 0,21% a 19,25% ao longo de diferentes períodos (de três dias a um ano); Top 20 sinais: Variações de 0,25% a 19,63%; Top 10 sinais: Variações de 0,22% a 21,95%; Top 5 sinais: Variações de 0,24% a 22,78%.

O modelo FB Prophet, desenvolvido pelo Facebook, é um exemplo projetado para lidar com séries temporais e reconhecido por sua facilidade de uso e precisão em previsões (АГНОН Х.О.. 2021).
Este modelo é capaz de lidar com tendências e padrões sazonais.
No estudo em questão, os dados das ações da Amazon foram analisados usando o FB Prophet.
Os dados incluíram variáveis como preço de abertura, fechamento, mínimo, máximo e volume, obtidos do Yahoo Finance.

O modelo foi treinado com dados dos últimos três anos, permitindo que identificasse tendências e padrões relevantes.
A precisão do modelo foi notavelmente alta, atingindo 95%, o que indica uma confiabilidade significativa nas previsões geradas.

Além disso, o estudo realizou previsões para os próximos 50 dias com um intervalo de confiança de 80%.
Isso sugere que o modelo tem uma forte capacidade de prever com precisão os movimentos futuros dos preços das ações dentro de um intervalo razoável.
As visualizações fornecidas, incluindo gráficos históricos e modelados, bem como gráficos de previsão, oferecem uma representação clara das tendências e previsões.

A literatura indica um crescente reconhecimento da capacidade dos métodos de ML de capturar relações complexas e de proporcionar uma análise mais profunda de variáveis estudadas por economistas como: os índices econômicos e sociais no escopo do desenvolvimento e economia regional, preços de ações de empresas, commodities e criptomoedas.
Contudo, a escolha do método apropriado depende muito das características dos dados e do contexto do problema a ser analisado pelo pesquisador.

Em conclusão, a aplicação de ML nos campos da economia e do desenvolvimento humano é uma área promissora e em rápido crescimento.
A combinação de uma maior disponibilidade de dados e o avanço das técnicas de ML permitirá um maior entendimento e previsão de importantes indicadores de desenvolvimento, como o IDH.
No entanto, mais pesquisas são necessárias para aprimorar a eficácia desses modelos e explorar sua aplicabilidade em outras áreas do desenvolvimento econômico e social.

3.  **METODOLOGIA**

O Índice de Desenvolvimento Humano (IDH), estabelecido em 1990 pelo Programa das Nações Unidas para o Desenvolvimento (PNUD), criado por Mahbub ul Haq com a colaboração do economista indiano Amartya Sen, publicado no relatório do desenvolvimento humano de 1990 ("HUMAN DEVELOPMENT REPORT 1990", 1990), marcou a compreensão e mensuração do desenvolvimento humano.

Ele se destaca não por abrangência, uma vez que ele não abrange todos os aspectos do desenvolvimento, mas três dimensões críticas: saúde, educação e renda.
Outro aspecto que o destaca é sua habilidade de apresentar uma medida simples de fácil compreensão acerca do desenvolvimento humano.

No contexto brasileiro, o IDHM tornou-se uma adaptação direta desse índice global, servindo como uma ferramenta para monitorar avanços a nível municipal, e estadual no desenvolvimento brasileiro.

Neste panorama, a metodologia adotada neste estudo denota a capacidade do Machine Learning (ML) na predição de indicadores, sublinhando sua relevância no campo da economia.
A abordagem concentra-se no emprego de modelos baseados em árvores de decisão, especificamente florestas aleatórias, utilizando um conjunto de dados originário do Atlas do Desenvolvimento Humano no Brasil.

O processo de seleção dos dados está alinhado à metodologia delineada no próprio Atlas e é enriquecido por indicadores macroeconômicos globais, como população, PIB, proporção de indivíduos abaixo da linha de pobreza e taxas de mortalidade infantil.
A introdução dos índices GINI e Theil e a população total foi optado por não os efetivar no modelo final, devido ao uso do IDHM não ajustado, que leva a baixa relação entre os índices e o IDHM.
O núcleo da análise visa ilustrar a precisão e robustez das técnicas de ML na estimação do IDHM.

O Índice de Desenvolvimento Humano (IDH) é uma métrica reconhecida no cenário acadêmico, e procura traduzir o progresso humano em simples indicadores econômicos, para procurar um entendimento de suas dimensões.
Em sua composição, o IDH é constituído por três indicadores fundamentais, que juntos capturam a amplitude e a profundidade das oportunidades e capacidades humanas.
Seu cálculo pode ser encontrado nas notas técnicas do IDH publicado no site da PNUD ("Calculating the human development indices-graphical presentation Inequality-adjusted Human Development Index (IHDI) Knowledge Human Development Index (HDI) Long and healthy life A decent standard of living Human Development Index (HDI) Knowledge Long and healthy life A decent standard of living Inequality-adjusted Human Development Index (IHDI) Health Education", [s.d.]).

O primeiro desses indicadores é a longevidade, representada pela dimensão "Vida Longa e Saudável".
No contexto do desenvolvimento humano, não se trata apenas de prolongar a vida, mas de garantir sua qualidade.
A essência desta dimensão reside no entendimento de que uma vida plena é a que as pessoas têm as oportunidades necessárias para evitar mortes prematuras e onde se garante um acesso equitativo a serviços de saúde de qualidade.

A dimensão "Acesso ao Conhecimento" notabiliza a relevância da educação no desenvolvimento humano.
Este indicador concentra a transmissão de informações na formação dos indivíduos, possibilitando que eles exerçam suas liberdades, autonomia e autoestima.
A educação é traduzida não apenas como direito, mas como uma ferramenta capacitadora das pessoas na tomada de decisões sobre seu futuro.

Por fim, a dimensão "Padrão de Vida" centra-se na renda como um meio para atingir a realização plena das capacidades humanas.
Embora a renda seja fundamental para satisfazer necessidades básicas como alimentação, água e moradia, principalmente o potencial para permitir que os indivíduos transcendem as necessidades básicas.
No entanto, é crucial reconhecer que a ausência de renda adequada pode limitar drasticamente as oportunidades de vida, restringindo o acesso a bens e serviços essenciais e, por extensão, as próprias liberdades humanas.

**3.1.ADAPTAÇÃO DO IDHM: UMA VISÃO HISTÓRICA E METODOLÓGICA**

O Brasil, ao longo das últimas décadas, tem demonstrado um compromisso contínuo com a avaliação e melhoria do desenvolvimento humano em sua dimensão territorial mais ampla.
Este compromisso é evidente na maneira como o país adaptou o Índice de Desenvolvimento Humano (IDH) global ao seu contexto municipal/estadual detalhado no livro "O Índice de Desenvolvimento Humano Municipal Brasileiro (UNITED NATIONS DEVELOPMENT PROGRAMME; FUNDAÇÃO JOÃO PINHEIRO; INSTITUTO DE PESQUISA ECONÔMICA APLICADA, 2013).

Em 1998, o Brasil foi além da utilização do IDH e adaptou para avaliar o desenvolvimento humano em todos os seus municípios.
Esta adaptação gerou o Índice de Desenvolvimento Humano Municipal (IDHM), fundamentado em dados do Censo Demográfico.

O compromisso com esta avaliação detalhada não foi um feito isolado, como evidenciado pela edição subsequente de 2003, que forneceu dados históricos para os anos de 1991 e 2000, proporcionando uma análise comparativa ao longo do tempo.

Em 2013 marcou outro momento, em colaboração, o PNUD Brasil, o IPEA e a Fundação João Pinheiro se propuseram a tarefa de adaptar a metodologia do IDH global para calcular o IDHM para os 5.565 municípios brasileiros com base nos dados do Censo Demográfico de 2010.

Esta iniciativa também envolveu a reavaliação do IDHM para os anos de 1991 e 2000, utilizando a nova metodologia.
Foi dada uma atenção à compatibilização das áreas municipais ao longo destes anos, considerando as alterações administrativas e assegurando a comparabilidade tanto temporal quanto espacial entre os municípios.

Em essência, o IDHM mantém a tríade fundamental do IDH global, abrangendo as dimensões de saúde, educação e renda.
No entanto, evidencia uma adaptação ao cenário brasileiro.
A metodologia foi ajustada para refletir não apenas o contexto nacional, mas também a disponibilidade e relevância de indicadores específicos.
Esta particularização garante que, embora os indicadores do IDHM e IDH possam medir fenômenos semelhantes, aqueles incorporados ao IDHM são mais aptos a avaliar, de maneira precisa, o desenvolvimento dos municípios brasileiros.

**3.1.1. ADAPTAÇÃO E METODOLOGIA DO IDHM**

O Índice de Desenvolvimento Humano Municipal (IDHM), embora enraizado no conceito global do Índice de Desenvolvimento Humano (IDH), foi meticulosamente adaptado para refletir as singularidades do contexto brasileiro.

Principalmente, essa adaptação buscou dois objetivos centrais: (1) incorporar indicadores que capturassem de forma mais precisa as condições dos municípios, entidades menores no tecido social brasileiro, e (2) garantir uma uniformidade e comparabilidade de dados, optando por utilizar exclusivamente os indicadores disponíveis nos Censos Demográficos do país.

A metodologia para o IDHM pode ser conferida tanto no livro "O Índice de Desenvolvimento Humano Municipal brasileiro, como na metodologia publicada pelo Atlas Brasil ("Atlas Brasil", [s.d.]).

Dentro dessa estrutura, o IDHM se desdobra em três dimensões principais: Longevidade, Educação e Renda.
A longevidade é calculada com base na expectativa de vida ao nascer, enquanto a dimensão educacional combina indicadores de escolaridade adulta e fluxo escolar juvenil.
Por fim, a renda é representada pela renda per capita do município, oferecendo uma panorâmica do poder aquisitivo médio dos residentes.
Essas métricas, em conjunto, oferecem uma visão holística e contextualizada do desenvolvimento humano a nível municipal, proporcionando insights valiosos para políticas públicas e planejamento estratégico.

O IDHM (Índice de Desenvolvimento Humano Municipal) é uma ferramenta que busca avaliar o nível de desenvolvimento humano dos municípios do Brasil, adaptando-se à realidade local a partir dos conceitos usados globalmente pelo IDH.
Este índice é estruturado em três dimensões fundamentais: Longevidade, Educação e Renda.
Na dimensão da Longevidade, o foco é a expectativa de vida ao nascer.
Esta métrica é considerada um indicador primordial de longevidade, pois representa o número médio de anos que se espera que um indivíduo viva no momento do nascimento, considerando os padrões de mortalidade atuais.

Para calcular o indicador de Longevidade, são necessários métodos indiretos, pois os dados demográficos diretos não estão imediatamente disponíveis.
O método adotado para tal é o desenvolvido por William Brass (1968), que foi adaptado pelo Professor José Alberto Magno de Carvalho, da Universidade Federal de Minas Gerais (UFMG), para se adequar a regiões com baixo volume populacional, como é o caso de muitos municípios brasileiros.
Para a dimensão Longevidade, o IDHM e o IDH Global se alinham na adoção da esperança de vida ao nascer como indicador chave.
Esta métrica é derivada de informações dos Censos Demográficos e da PNAD Contínua do IBGE.
Para transformar o indicador em um Índice de Longevidade, são adotados valores máximos e mínimos (85 e 25 anos, respectivamente) para normalizar os resultados.
Assim, o IDHM fornece uma visão abrangente e contextualizada da saúde e longevidade em municípios específicos, o que pode informar a tomada de decisões e o planejamento de políticas públicas.

Dentro da metodologia do Índice de Desenvolvimento Humano Municipal (IDHM), a dimensão da Longevidade ocupa um espaço de extrema importância.
Esta dimensão busca avaliar a longevidade da população, considerando-a uma das três componentes essenciais para aferir o desenvolvimento humano, juntamente com a Renda e a Educação.
O principal indicador utilizado para essa dimensão é a esperança de vida ao nascer.

A esperança de vida ao nascer, que compõem a dimensão Longevidade do IDHM, indica o número médio de anos que uma pessoa nascida em determinado município ou unidade de análise viveria, se prevalecesse os mesmos padrões de mortalidade observados no período em que o dado foi coletado.
Esse indicador é uma síntese das condições de saúde, sociais e de salubridade de uma população, visto que incorpora taxas de mortalidade para todas as faixas etárias, contemplando tanto as doenças quanto causas externas, como violência e acidentes.

O cálculo desse indicador no IDHM não é direto.
Não se obtém simplesmente a partir das informações dos Censos Demográficos.
Em vez disso, recorre-se a técnicas indiretas, como os métodos desenvolvidos por William Brass.
Tais técnicas, para serem precisas, necessitam de ajustes, sobretudo quando aplicadas em regiões com populações menores.
No contexto brasileiro, a adaptação dessas técnicas foi executada pelo Professor José Alberto Magno de Carvalho, do CEDEPLAR/UFMG.

Para que o indicador de esperança de vida ao nascer seja transformado em Índice de Longevidade, é preciso utilizar uma normalização, adotando-se parâmetros de valores máximos e mínimos.
O IDHM estabelece que o valor máximo é 85 anos e o mínimo é 25 anos.
Portanto, para calcular o Índice de Longevidade de uma dada região, usa-se a fórmula

I = valor observado-valor mínimo / valor máximo-mínimo

Em resumo, a dimensão Longevidade do IDHM é fundamental para entender o nível de desenvolvimento humano de uma região, oferecendo uma visão compreensiva sobre a saúde e as condições de vida da população.
Os métodos e técnicas de cálculo utilizados para este fim garantem uma avaliação robusta e confiável dessa importante dimensão.

A Dimensão Educação do IDHM é dividida em dois indicadores principais: escolaridade da população adulta e fluxo escolar da população jovem.
A escolaridade da população adulta foca no percentual de indivíduos com 18 anos ou mais que concluíram o ensino fundamental.
Esta métrica reflete o funcionamento do sistema educacional em períodos anteriores, supondo que a população adulta, ao passar pelo sistema educacional, deveria ter completado pelo menos o ensino fundamental.

Por outro lado, o indicador do fluxo escolar da população jovem monitora a progressão da população em idade escolar em quatro fases cruciais: a admissão ao sistema educacional, a conclusão do primeiro ciclo do ensino fundamental (focando apenas no ensino regular), a conclusão do ensino fundamental e a conclusão do ensino médio.
O design destes indicadores permite avaliar se os estudantes estão progredindo de acordo com sua faixa etária, alinhando-se às expectativas padrão para sua idade.

Entretanto, é fundamental notar que existem limitações nestes indicadores.
O foco em certas faixas etárias e estágios da educação pode não capturar toda a imagem da trajetória educacional de um indivíduo.
Por exemplo, a métrica da educação da população jovem não inclui toda a população em idade escolar e enfatiza apenas certos pontos de sua jornada educacional.

Além dos indicadores principais, o Atlas Brasil apresenta outros indicadores complementares para proporcionar uma visão mais holística e detalhada da situação educacional em determinada área.
Tais indicadores abordam questões como analfabetismo, graus variados de escolaridade e frequência escolar.

A dimensão Educação do IDHM é calculada com base nas respostas fornecidas pelo Censo Demográfico e pela Pesquisa Nacional por Amostra de Domicílio (PNAD Contínua) conduzidos pelo IBGE.
Esses dados são convertidos em índices que variam de 0 a 1, permitindo que diferentes localidades sejam comparadas em relação ao seu desempenho educacional.
Por exemplo, se um município apresenta 65% de sua população adulta com ensino fundamental completo, seu índice de escolaridade será 0,650.

Em resumo, a dimensão Educação do IDHM oferece uma perspectiva crucial sobre o estado da educação em diferentes partes do Brasil, permitindo que políticas públicas sejam formuladas para abordar áreas específicas de preocupação e melhorar o acesso e a qualidade da educação em todo o país.

A dimensão "Renda" no Índice de Desenvolvimento Humano Municipal (IDHM) avalia o padrão de vida da população, sendo representada pela renda mensal per capita.
Conforme a metodologia, a renda média mensal de indivíduos em específicas regiões - como municípios, estados, regiões metropolitanas ou Unidades de Desenvolvimento Humano (UDH) - é expressa em reais e tem como referência valores de 1º de agosto de 2010.
A principal métrica deste indicador, a renda per capita, busca mensurar a média de capacidade dos indivíduos em adquirir bens e serviços no local de referência, sendo um reflexo direto da habilidade dos habitantes em assegurar suas necessidades vitais, tais como água potável, alimento e moradia.

A obtenção de tais valores se dá através dos resultados advindos dos questionários de amostra do Censo Demográfico e da Pesquisa Nacional por Amostra de Domicílio (PNAD) Contínua, para os períodos intercensitários.
Esse indicador é calculado pela divisão do total de rendimentos de todos os residentes no local de referência pelo número total desses indivíduos.
Vale destacar que os valores obtidos nos Censos Demográficos de 1991 e 2000 foram ajustados para reais constantes de 1º de agosto de 2010.
Para isso, empregou-se a série do Índice Nacional de Preços ao Consumidor (INPC) do IBGE, considerando, ainda, um ajuste relacionado à inflação em julho de 1994.

Contudo, uma ressalva importante é que este indicador não contempla a desigualdade de renda entre os residentes.
Ou seja, mesmo que uma localidade apresente alta renda per capita, pode existir uma porção significativa de sua população em condição de pobreza.
O cálculo específico da dimensão Renda no IDHM é efetuado através da fórmula que envolve o logaritmo natural da renda per capita do local em relação a valores referenciais pré-estabelecidos.
A aplicação do logaritmo tem o objetivo de amenizar as disparidades entre as rendas mais altas e mais baixas, levando em conta que aumentos na renda per capita proporcionam menores retornos em termos de desenvolvimento humano à medida que a renda cresce.

O desenvolvimento da metodologia da pesquisa é fundamental para qualquer estudo que envolva dados e suas respectivas análises.
A maneira como coletado, tratado, analisado e interpretado os dados têm impacto significativo nas conclusões, a referência das técnicas de ciência de dados usados no estudo é Introduction to Data Science (IRIZARRY, 2019).

O professor Ph.D.
Rafael Irizarry professor de bioestatística e biologia computacional no Dana-Farber Cancer Institute e Harvard University em seu livro "Introduction to Data Science", o professor Rafael Irizarry, estabelece um manual estruturado da abordagem de projetos de ciência de dados, que alinham a metodologia adotada neste estudo.

No livro o professor Irizarry descreve os fundamentos da ciência de dados, desde a escolha do software, no caso a linguagem de programação R, os processos de visualização passando pela análise exploratória de dados, processos estatísticos de inferência, e a construção de modelos de Machine learning.

**3.2. COLETA E PRÉ-PROCESSAMENTO DE DADOS**

A coleta e o pré-processamento dos dados são etapas fundamentais no início de qualquer investigação científica.
No contexto do presente estudo, que se centra na análise do Indicador de Desenvolvimento Humano Municipal (IDHM), esses passos ocorrem de maneira metódica e detalhada.

Inicialmente, os dados relativos ao IDHM e demais indicadores foram coletados do portal do Atlas Brasil, que é um repositório confiável e robusto de dados socioeconômicos abrangendo todos os municípios do Brasil e demais Unidades Federativas e UDHs.
O portal disponibiliza esses dados no formato de arquivos Excel, XLSX, facilitando a importação para as ferramentas de análise de dados a serem utilizadas posteriormente.

Para a demonstração foram coletados os do IDHM do Brasil e todos os estados contendo o Distrito Federal também, organizados em suas territorialidades, entre os anos de 2012 a 2012.
Para uso da plataforma Rstudio, os anos foram renomeados com um X no início do ano, passando a ser X2012 à X2021.

![](images/Captura%20de%20Tela%20(121)-01.png)

Também foram coletados dados referentes a taxas de analfabetismo referentes a 15 anos ou mais de idade, 18 anos ou mais e 25 anos ou mais, o IDHM educação junto com os subíndices de escolaridade e frequência de escolaridade da população utilizados na construção do IDHM educação.

O IDHM longevidade foi coletado junto com os dados de esperança de vida e mortalidade infantil.
O IDHM renda foi coletado como também os dados de Renda per capita e porcentagem de pobres.
Para finalizar a coleta de dados indicadores como população total, índice GINI e o índice Theil L foram adicionados também para ampliar a abrangência de indicadores do processo.

4.  **DESENVOLVIMENTO**

Após a coleta dos dados, realizou-se o processo de engenharia dos dados, que garantiu a limpeza e tratamento para auferir a qualidade e a confiabilidade dos resultados subsequentes.
Nesta fase, identifica-se e corrige eventuais inconsistências nos dados, como valores ausentes, erros e outliers.
A estratégia de tratamento dos valores ausentes pode variar dependendo do contexto e da natureza do dado, podendo incluir a substituição pelo valor médio, mediano e modal do respectivo atributo.
Os outliers são identificados por meio de técnicas estatísticas, como o método IQR (Intervalo entre quartis) ou Z-Score, e tratados de acordo com as necessidades do estudo.

Dependendo da técnica de análise a ser empregada, os dados do IDHM podem passar por um processo de transformação.
Essa transformação pode envolver a normalização ou padronização dos dados, de modo a garantir que todos os atributos estejam na mesma escala, o que torna a comparação entre diferentes variáveis mais consistente e significativa.

Antes de começar a engenharia de dados os pacotes: "tidyr", "plyr" e "readxl" foram instalados com suas dependências e carregados com a função library.

O primeiro passo da engenharia de dados fora tratar os dados para o formato a ser utilizado na confecção do modelo, primeiramente importou os dados para o Rstudio, e aplicou a função "gather" para converter os anos em uma coluna, tendo três colunas com a Territorialidade, o Estado, o ano indo de 2012 a 2021, e a variável da tabela, como a renda per capita no código.
Em seguida a função "gsub" limpou o X à frente dos anos, e por fim converteu a variável ano em numérico (Quadro 1).
O processo repetiu todas as variáveis utilizadas no modelo.

carregar pacotes para a Engenharia de dados.

```{R packages, include=FALSE, echo=TRUE}
library(tidyr)
library(readxl)
library(plyr)
```

```{r Código para Importação dos dados em XLSX para o R, echo = TRUE}
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

#adaptação do código desenvolvido por Anne (2020).
```

O próximo passo consistiu na contagem da ausência de valor nas observações, nulos, e a proporção de nulos em relação às linhas da tabela, esse processo foi repetido para todas as variáveis (Quadro 3), e continuado para demais variáveis.

```{r Código para calcular o percentual de valores nulos sobre o número de linhas., echo=TRUE}
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


#adaptação do código desenvolvido por Anne (2020).
```

Seguindo, foi criado um data frame único, nomeado de IDHM.AED, através da função "join" para unir os data frames com os indicadores indexando o território e o ano para não desorganizar os dados.

```{R Código para a criação de Data Frame único para as variáveis do IDHM., echo=TRUE}
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

#adaptação do código desenvolvido por Anne (2020).
```

Em todas as etapas do processo da engenharia de dados não foram encontrados erros no data frame, valores nulos ou NA (Not Available).
e a criação do data frame único não apresentou inconsistência.

Com o uso da função "sapply" ela retornou a contagem dos valores apresentados no data frame, introduzido seu uso a seção 3.5 Vetorização e Funcionais em "Introduction to Data Science", (IRIZARRY, 2019) marcando em territorialidades o valor 28 com os 26 estados o distrito federal e o Brasil, ano obteve 10 valores, os anos de 2010 a 2021 e assim por diante nas demais variáveis contando os valores únicos, sem contar suas repetições na coluna.

O uso da função "str" também no livro do Professor Irizarry no 2.4.2 demonstrando um objeto, demonstra os dados do data frame em ordem, no entanto, o fato do data frame ser muito grande impossibilita a demonstração de toda a estrutura do data frame.

```{r Código para função sapply e str para conferir a disposição dos dados, echo=TRUE}
AED.df = IDHM.AED



# Verificar que o número de estados continua os mesmos e o data frame está correto


sapply(AED.df, function(x) length(unique(x)))

str(AED.df)

#adaptação do código desenvolvido por Anne (2020) e Irizarry ( 2019).
```

Nessa última etapa encerrou o processo de engenharia de dados terminando com uma etapa de verificação para garantir que não restassem inconsistências ou erros.
Esse processo de verificação envolveu a revisão de valores extremos e a confirmação das estatísticas descritivas, como médias, para garantir a acurácia dos dados.

Em todas essas etapas, é importante que cada decisão tomada seja documentada de maneira detalhada e transparente.
Esse rigor metodológico permite não apenas a reprodutibilidade da pesquisa, mas também garante que os resultados derivados desses dados sejam confiáveis e válidos.

**4.1. ANÁLISE EXPLORATÓRIA DE DADOS**

Subsequentemente a engenharia de dados, implementa-se uma Análise Exploratória de Dados (AED) detalhada, que serve como o alicerce para a compreensão e interpretação das complexidades subjacentes dos dados.
Essa metodologia se destina a extrair percepções intrínsecas, investigar a estrutura, detectar outliers e testar hipóteses subjacentes que poderiam potencialmente beneficiar a modelagem de Random Forest mais adiante.

Na etapa inicial da análise exploratória, é realizada uma análise uni variada rigorosa para cada variável no conjunto de dados.
Isso implica na geração de estatísticas descritivas que fornecem um entendimento das características centrais de cada variável, como tendência central (média, mediana), dispersão (variância, desvio padrão), e extremos (mínimo, máximo).
É necessário visualizar a distribuição de cada variável para entender sua forma, identificar qualquer desvio de normalidade, e observar a presença de valores extremos.

Utiliza-se as técnicas de visualização, como gráficos de dispersão e mapas de calor de correlação, para auxiliar na visualização dessas relações multidimensionais.
Irizarry (2019) utiliza em sua maioria os pacotes "dplyr" e "ggplot2" que permitem resumir, sintetizar dados e plotar gráficos e "boxplots" respectivamente.

Outliers, ou valores extremos, podem ter um impacto substancial nos resultados do modelo.
Como tal, parte de nossa análise exploratória envolve a detecção e tratamento apropriado desses outliers.
Implementar métodos robustos para a identificação desses valores e, com base na sua natureza e impacto nos dados, toma-se uma decisão informada sobre se devem ser mantidos, transformados ou removidos.

Na análise exploratória do IDHM utilizou-se os pacotes: "corrplot", "RColorBrewer", "ggplot2" e "ggpubr".
O primeiro passo foi preparar um dataset para montar uma matriz de correlação, para compreender as inter-relações entre os indicadores.

O pacote "corrplot" - Visualization of a Correlation Matrix (WEI et al.,s.d.) em R é uma ferramenta para visualização de matrizes de correlação.
Ele oferece meios visuais exploratórios para a matriz de correlação e suporta a reordenação automática de variáveis, auxiliando na detecção de padrões ocultos entre as variáveis.

O "ggplot2" descrito por Wickham (2016) no livro dedicado ao pacote "ggplot2 Elegant Graphics for Data Analysis" é utilizado para criar gráficos de forma declarativa, baseado em "The Grammar of Graphics" (WILKINSON, 2012), Com ele, o usuário fornece os dados, específica como mapear as variáveis para as estéticas e quais primitivos gráficos utilizar.
O "ggplot2" cuida dos detalhes, permitindo a criação de visualizações de dados elegantes e sofisticadas.

O pacote "RColorBrewer" (NEUWIRTH, 2022), oferece paletas de cores para mapas (e outros gráficos) desenhados por Cynthia Brewer ("COLORBREWER: COLOR ADVICE FOR MAPS", [s.d.]).
Estas paletas são eficazes em representar informações de maneira clara e esteticamente agradável.

O pacote "ggpubr" - 'ggplot2' Based Publication Ready Plots (KASSAMBARA, 2023) em R complementa o "ggplot2", facilitando a criação de gráficos prontos para publicação.
Embora o "ggplot2" seja flexível e excelente para visualização de dados, os gráficos gerados por padrão muitas vezes necessitam de formatação adicional.
Personalizar um gráfico no "ggplot2" pode ser complexo para pesquisadores sem habilidades avançadas em R.
Assim, "ggpubr" oferece funções simples de usar para criar e personalizar gráficos "ggplot2" de qualidade profissional.

Primeiramente, limpou-se os dados eliminando a coluna não numérica e o ano, "Territorialidades" e "ano", focando somente nos indicadores quantitativos.
Com os dados prontos, calculamos a matriz de correlação dos indicadores restantes.
Por fim, para melhor visualização e interpretação, utilizamos o pacote "corrplot" para exibir a matriz.

```{r carregar os pacotes, echo = TRUE}
library(corrplot)
library(RColorBrewer)
library(ggplot2)
library(ggpubr)
```

```{r Código para limpar colunas não numéricas e montagem da Matriz de Correlação, echo=TRUE}
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
         col=brewer.pal(n=8, name="RdYlBu"),
         title="Matriz de Correlação dos Dados")

# Adicionar uma nota de rodapé
mtext("Elaboração própria com dados do Atlas Brasil", side=1, line=4, cex=1.2)
# gini, theil e população tem relação fraca com IDHM. mas irei manter para análise

#adaptação do código desenvolvido por Anne (2020), Irizarry (2019) capítulo 17.
```

Os indicadores foram organizados através de um agrupamento hierárquico e a correlação entre eles foi representada por gráficos de pizza, onde as cores variam desde o vermelho, denotando correlação negativa, até o azul indicando correlação positiva.
Este gráfico permitiu uma rápida compreensão das relações entre os indicadores em estudo.

Os índices de GINI e o de Theil apresentaram uma fraca correlação com o IDHM, como também a população total também apresentou fraca correlação.
Os índices de Gini e Theil apresentaram correlação pouco além que - 0,25 para se enquadrar em uma outra paleta de cor de - 0,25 à -0,50 na visualização.

O mesmo ocorreu com a população total, que teve a menor correlação, embora positiva dessa vez, sua correlação ficará entre 0 e 0,25, diferentemente dos índices de Gini e Theil que apresentaram uma maior correlação na Matriz de correlação.

O seguinte passo foi a criação de um data frame único nomeado de predict.IDHM unindo todos os indicadores no mesmo data frame com a função "join".
Cada indicador foi adicionado com a indexação por ano e territorialidade.
Seguindo a montagem do data frame único realizou a limpeza do data frame predic.IDHM.
Inicialmente, exclui a coluna "Territorialidades", e filtra e as linhas sem valores.
A estrutura final do data frame é então observada com a função "str" para oferecer uma visão geral do data frame.

```{r montar data frame para regressões, echo=TRUE}
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
#daptação do código desenvolvido por Anne (2020) e Irizarry ( 2019).
```

Um gráfico de dispersão matriz para visualizar as relações entre todas as variáveis ajuda a compreender a relação dos dados do data frame predic.IDHM.
Este tipo de visualização é útil para uma rápida avaliação das inter-relações entre múltiplas variáveis.
No entanto, uma desvantagem notável de um "scatterplot matrix" geral é a potencial sobrecarga visual, especialmente quando há muitas variáveis.
Isso pode tornar difícil discernir padrões claros ou tendências específicas.

Em contraste, ao plotar o IDHM contra cada variável individualmente, é possível obter uma visão mais clara e focada da relação específica entre o IDHM e cada variável.
Isso facilita a identificação de padrões e correlações diretamente relevantes para o IDHM, ao invés de se perder no emaranhado de todas as possíveis relações entre variáveis.

Em Seguida foi feito ambos os modelos para melhorar o detalhamento da análise exploratória de dados aplicada no exemplo do IDHM.

```{r Código para plotagem de Matriz Scatterplot, echo = TRUE}
### Plotar a correlação como scatterplot matrix.
# Criação do scatterplot sem título principal
plot(predic.IDHM, pch=1, cex=.2, col=rgb(0,0,0,0.4), main="")

# Adição do título, subtítulo e fonte
mtext("Gráfico 2 - Matrix Scatterplot das variáveis com correlação com o IDHM", side=3, line=3, adj=0) # Título
mtext("Análise baseada em dados do Atlas Brasil", side=3, line=2, adj=0) # Subtítulo
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj=0, cex=0.8, col="black", font=3) # Fonte
#Elaboração própria com os dados do IDHM obtidos no portal Atlas Brasil advindos do IBGE e Registros Administrativos.
```

Seguindo com a utilização dos scatterplots, uma medida para entender as relações lineares que as variáveis empenham ao IDHM é a utilização do scatterplot com linha de tendência para as variáveis, e a regressão linear simples das variáveis com o IDHM.
O Apêndice D incluí o código e resultado para as demais variáveis além da renda per capita.

```{r scatterplot com linha de regressão e os resultados, echo = TRUE}
# Criar um scatterplot com linha de regressão para IDHM e renda per capita
ggscatter(predic.IDHM, x = "renda_per_capita", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Renda Per Capita") +
  labs(title = "Gráfico 3 - Relação entre IDHM e Renda Per Capita",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ renda_per_capita, data=predic.IDHM))

# Criar um scatterplot com linha de regressão para IDHM e Subindice de Escolaridade
ggscatter(predic.IDHM, x = "sub_esco_pop", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Subindice de Escolaridade") +
  labs(title = " Gráfico 3.1 - Relação entre IDHM e Subindice de Escolaridade",
          subtitle = "Análise baseada em dados do Atlas Brasil",
          caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ sub_esco_pop, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Subindice de frequência Escolar
ggscatter(predic.IDHM, x = "sub_freq_esco", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Subindice de Frequência Escolar") +
  labs(title = "Gráfico 3.2 - Relação entre IDHM e Subindice de Frequência Escolar",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ sub_freq_esco, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Esperança de Vida
ggscatter(predic.IDHM, x = "esperança_de_vida", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Esperança de Vida") +
  labs(title = "Gráfico 3.3 - Relação entre IDHM e Esperança de Vida",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ esperança_de_vida, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Percentual de Pobres na População
ggscatter(predic.IDHM, x = "porcent_pobres", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Percentual de Pobres na População") +
  labs(title = "Gráfico 3.3 - Relação entre IDHM e Percentual de Pobres na População",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ porcent_pobres, data=predic.IDHM))




# Criar um scatterplot com linha de regressão para IDHM e População Total
ggscatter(predic.IDHM, x = "população_total", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e População Total") +
  labs(title = "Gráfico 3.4 - Relação entre IDHM e População Total",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ população_total, data=predic.IDHM))





# Criar um scatterplot com linha de regressão para IDHM e Mortalidade Infantil
ggscatter(predic.IDHM, x = "mortalidade_infantil", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Mortalidade Infantil") +
  labs(title = "Gráfico 3.5 - Relação entre IDHM e Mortalidade Infantil",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ mortalidade_infantil, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Média de Anos de Estudo
ggscatter(predic.IDHM, x = "media_anos_de_estudo", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Média de Anos de Estudo") +
  labs(title = "Gráfico 3.6 - Relação entre IDHM e Renda Média de Anos de Estudo",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ media_anos_de_estudo, data=predic.IDHM))





# Criar um scatterplot com linha de regressão para IDHM e Índice de GINI
ggscatter(predic.IDHM, x = "indice_gini", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Índice de GINI") +
  labs(title = "Gráfico 3.7 - Relação entre IDHM e Índice de GINI",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ indice_gini, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Índice de Theil
ggscatter(predic.IDHM, x = "ind_theil_L", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Índice de Theil") +
  labs(title = "Gráfico 3.8 - Relação entre IDHM e Índice de Theil",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ ind_theil_L, data=predic.IDHM))



# Criar um scatterplot com linha de regressão para IDHM e Tx. Analfabetismo acima de 25 anos
ggscatter(predic.IDHM, x = "analfabetismo_25_anos", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Tx. Analfabetismo acima de 25 anos") +
  labs(title = "Gráfico 3.9 -Relação entre IDHM e Tx. Analfabetismo acima de 25 anos",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ analfabetismo_25_anos, data=predic.IDHM))


# Criar um scatterplot com linha de regressão para IDHM e Tx. Analfabetismo acima de 18 anos
ggscatter(predic.IDHM, x = "analfabetismo_18_anos", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Tx. Analfabetismo acima de 18 anos") +
  labs(title = "Gráfico 3.10 -Relação entre IDHM e Tx. Analfabetismo acima de 18 anos",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ analfabetismo_18_anos, data=predic.IDHM))


# Criar um scatterplot com linha de regressão para IDHM e Tx. Analfabetismo acima de 15 anos
ggscatter(predic.IDHM, x = "analfabetismo_15_anos", y = "IDHM", 
          color=rgb(0,.2,.5,  1), pch=1, add = "reg.line", 
          add.params = list(color=rgb(0,.4,.4,  1), fill = "light gray"), 
          conf.int = TRUE, main = "Relação entre IDHM e Tx. Analfabetismo acima de 15 anos") +
  labs(title = "Gráfico 3.11 -Relação entre IDHM e Tx. Analfabetismo acima de 15 anos",
       subtitle = "Análise baseada em dados do Atlas Brasil",
       caption = "Fonte: Elaboração própria com dados do Atlas Brasil") +
  theme(plot.caption = element_text(hjust = 0, face="italic"))
# Printar estatística F para ver a significacia da regressão
summary(lm(IDHM ~ analfabetismo_15_anos, data=predic.IDHM))
#adaptação do código desenvolvido por Anne (2020)
```

As observações indicaram relação significativa dos indicadores e R2 entre 0,45 e 0,7, renda per capita teve maior R2 = 0,8157, os indicadores população total, índice Theil L e índice de GINI apresentaram, apesar de significância menor de 0,001 de p valor, o R2 foi de 0.04372, 0.0707 e 0,06284 respectivamente.

Devido às variáveis índice de GINI, índice de Theil e população total optou-se por retirá-las do modelo final, por meio do pacote "dplyr" com a função "select" e o nome das variáveis do modelo precedidos pelo sinal de subtração.

```{r Código para remoção de variáveis., echo=TRUE}
library(dplyr)
predic.IDHM <- select(predic.IDHM, -ind_theil_L, -indice_gini, -população_total)
#elaboração própria com a função select do pacote “dplyr” no R
```

Como última análise, o monitoramento de outliers pode prover insights de possíveis vieses à pesquisa, por isso deve atentar a possibilidade.
O uso da função "quantile" auxilia essa análise com a definição do número de quantis a ser usados, e a função "sort" para ajustar os dados em ordem crescente.
Entretanto em ocasiões com um número muito grande de dados como quando utiliza-se micro dados o uso da função "sort" pode vir a ser inviável.

```{r Avaliação de quantis para as variáveis, echo = TRUE }
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
print(paste0("mortalidade_infantil"))
quantile(predic.IDHM$mortalidade_infantil, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$mortalidade_infantil)
print(paste0("media_anos_de_estudo"))
quantile(predic.IDHM$media_anos_de_estudo, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$media_anos_de_estudo)
print(paste0("analfabetismo_25_anos"))
quantile(predic.IDHM$analfabetismo_25_anos, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$analfabetismo_25_anos)
print(paste0("analfabetismo_18_anos"))
quantile(predic.IDHM$analfabetismo_18_anos, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$analfabetismo_18_anos)
print(paste0("analfabetismo_15_anos"))
quantile(predic.IDHM$analfabetismo_15_anos, probs = seq(.1, 1, by = .1))
sort(predic.IDHM$analfabetismo_15_anos)
#adaptação do código desenvolvido por Anne (2020).
```

Todos os insights e observações adquiridos durante a AED são documentados de forma organizada e detalhada, criando um relatório que se torna parte integrante da metodologia de pesquisa.
Esses insights orientam o trabalho subsequente na seleção, implementação e otimização do modelo de Random Forest, permitindo abordar o processo de modelagem com uma compreensão clara e detalhada dos dados que estão sendo manipulados.

**4.2. DESENVOLVIMENTO E TREINAMENTO DO MODELO**

A fase de desenvolvimento e treinamento do modelo é um componente indispensável na sequência metodológica desta investigação.
Nesta etapa, optou-se por adotar o modelo de Aprendizado de Máquina conhecido como Random Forest devido às suas notáveis vantagens.

O Random Forest é particularmente adequado para lidar com conjuntos de dados que possuem relações complexas, o modelo demonstra uma robustez contra o fenômeno de overfitting, ou seja, quando o modelo aprende tão especificamente a partir dos dados de treinamento que se torna ineficiente para prever dados desconhecidos.

Para preparar o ambiente de treinamento, divide-se os dados pré-processados em dois conjuntos: treinamento e teste.
Esta prática comum é essencial para avaliar o desempenho e a capacidade de generalização do modelo, fornecendo uma estimativa robusta da sua performance quando aplicado a novos dados.
O conjunto de treinamento é utilizado para ajustar o modelo, enquanto o conjunto de teste é usado para avaliar sua performance.

Vale ressaltar que o Random Forest não é o único modelo que pode ser aplicado nesse cenário.
Outros modelos de aprendizado de máquina, tais como regressão linear, máquinas de vetores de suporte (SVM) ou redes neurais, podem ser considerados dependendo das características intrínsecas dos dados e do contexto específico do problema a ser resolvido.
A escolha do modelo adequado envolve uma consideração cuidadosa do equilíbrio entre capacidade do modelo, interpretabilidade e eficiência computacional.

Um elemento chave neste estágio é a sintonização de hiperparâmetros, um processo de ajuste fino que envolve a manipulação cuidadosa de diferentes parâmetros dentro do modelo.
Ajustes nesses hiperparâmetros podem ter impactos significativos na capacidade do modelo de aprender com eficácia a partir dos dados, equilibrando a complexidade do modelo para evitar tanto o underfitting (quando o modelo é muito simples e não consegue capturar a complexidade dos dados) quanto o overfitting (quando o modelo é muito complexo e se ajusta excessivamente aos dados de treinamento, perdendo capacidade de generalização).

Além disso, a experimentação com diferentes configurações de modelo é uma parte integral deste processo.
Por exemplo, ao alterar a estrutura ou a profundidade das árvores na Random Forest, é possível observar diferentes desempenhos do modelo.
Tais experimentações permitem explorar uma variedade de cenários e garantir que estão à maximizar a capacidade do modelo de capturar e aprender a partir dos padrões subjacentes nos dados.

Por fim, é imprescindível manter uma mente aberta para a avaliação de alternativas de modelos.
Embora o Random Forest tenha sido inicialmente escolhido por suas vantagens, outros modelos, como regressão linear, máquinas de vetores de suporte (SVM) ou redes neurais, podem vir a ser mais adequados conforme as características dos dados se revelam ao longo da investigação.
A adoção de um enfoque flexível e adaptativo para o desenvolvimento do modelo permite que esteja sempre pronto para responder a novos desafios e descobertas, buscando continuamente aprimorar a qualidade e robustez dos resultados.

No momento do desenvolvimento do modelo de aprendizado de máquina foi utilizado quatro pacotes: "plyr", "caret", "randomForest" e o "caTools".
o "plyr" já fora mencionado anteriormente na Engenharia de Dados.

O pacote "caret" (KUHN, 2008), oferece uma abordagem integrada ao treinamento e avaliação de modelos de Machine Learning.
Com ele, é possível treinar uma variedade de modelos usando uma única interface, facilitando o processo de modelagem.
Além disso, fornece ferramentas para avaliação rigorosa, pré-processamento de dados e visualização de resultados, a manutenção do pacote por Max Kuhn, e desenvolvido com parcerias para o R (KUHN et al.,s.d.).

O pacote "randomForest" desenvolvido com a importação do modelo de Breiman (2001), por Andy Liaw and Matthew Wiener (LIAW; WIENER, s.d.), é um pacote para classificação e regressão em análises estatísticas.
Utilizando uma combinação de árvores de decisão com entradas aleatórias, este pacote permite estimativas mais robustas e precisas.
O pacote inicialmente publicado no Rnews em dezembro de 2002 (LIAW; WIENER, 2002) com os autores detalhando o uso e funcionamento do pacote.

O pacote "caTools" (TUSZYNSKI, 2021) é uma ferramenta versátil que fornece uma série de funções utilitárias, essenciais para a análise de dados e complementares a métodos como o Random Forest, de autoria de Jarek Tuszynski.
Estes pacotes foram utilizados na construção e avaliação do modelo.

Primeiramente, é feita uma divisão de variáveis para treino e teste, no caso do IDHM, uma separação de 80 % para treino e 20% para teste.

```{R carregar pacotes para o Machine Learning, echo = TRUE}
library(plyr)
library(caret)
library(randomForest)
library(caTools)
#adaptação do código desenvolvido por Anne (2020).
```

```{r separação de dados, echo = TRUE }
#usar o data frame fina da análise exploratória (predic.IDHM), e selecionar os dados para treino (80%) e teste (20%)

set.seed(123)
amostra.IDHM <- predic.IDHM$IDHM %>%
  createDataPartition(p = 0.8, list = FALSE)
treino.IDHM  <- predic.IDHM[amostra.IDHM, ]
teste.IDHM <- predic.IDHM[-amostra.IDHM, ]
#adaptação do código desenvolvido por Anne (2020).
```

No caso da predição do IDHM, o modelo Random Forest operou construindo múltiplas árvores de decisão durante o treinamento.
Cada árvore é gerada a partir de uma amostra bootstrap do conjunto de dados, (amostra retirada com reposição).
Entretanto, em vez de considerar todas as características para a divisão em cada nó, o modelo seleciona um subconjunto aleatório de características, determinado pelo parâmetro "mtry".
Essas técnicas de aleatoriedade têm dois propósitos principais: Redução da Variação: Ao construir árvores em diferentes amostras de dados, a variabilidade inerente a cada árvore é "média", levando a uma estimativa final mais estável e robusta; Descorrelacionado Árvores: Ao usar subconjuntos aleatórios de características, cada árvore tem um "panorama" diferente dos dados.
Isso torna as árvores menos correlacionadas entre si e, consequentemente, a agregação das árvores oferece uma melhora na performance preditiva.

O código do modelo foi desenvolvido com um uso arbitrário de 500 árvores, e o uma utilização arbitrária de uma seleção de variáveis mtry = 3.
os resultados obtidos foram de 5,068181 x 10-5 de média dos resíduos ao quadrado e 97,38 % de explicação da variação.

```{r montagem do modelo e performance, echo = TRUE}
# random forest para regressão, iniciando com 500 arvores e mtry of 3
IDHM.model.1 <- randomForest(IDHM ~ ., data = treino.IDHM, ntree=500, mtry = 3, 
                         importance = TRUE, na.action = na.omit) 
print(IDHM.model.1) 
# Plotar erro vs numero de arvores 
plot(IDHM.model.1, main = "")

# Adicionar título e fonte no estilo ABNT
title(main = "Gráfico 4 - Erro vs Número de Árvores no Modelo 1", adj = 0)
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj = 0, cex=0.8)
#adaptação do código desenvolvido por Anne (2020).
```

O Gráfico feito com a função "plot", serve para dar indicações sobre a evolução do erro conforme se adicionam árvores ao modelo.

Para otimizar o valor de mtry, utiliza a função tuneRF do pacote randomForest no Rstudio.
Esta função ajusta sequencialmente modelos de Floresta Aleatória com diferentes valores de mtry, avaliando cada modelo usando a taxa de erro fora da bolsa (OOB).
Especificamente, tuneRF inicia com um valor de mtry e ajusta incrementos e decrementos, reavaliando o desempenho do modelo a cada passo, até que a melhoria no erro OOB seja menor que um limite pré-definido.

A função permite, assim, identificar o valor de mtry que minimiza o erro de previsão OOB, fornecendo uma orientação robusta para a configuração ideal deste hiperparâmetro em nosso conjunto de dados, no caso o valor de mtry encontrado na função "tuneRF" foi 3.
O que sugere que o modelo já está no melhor hiperparâmetro.
Mas optou-se por fazer um modelo dois com hiperparâmetro mtry = 4, para fins didáticos de comparação de modelos.

```{r Código com o tuneRF para determinação de melhor mtry., echo = TRUE}
#Usar tuneRF para determinar se há melhor mtry na tentativa de encontrar o valor que produz o menor erro.
mtry <- tuneRF(treino.IDHM[-6],treino.IDHM$IDHM, ntreeTry=500,
               stepFactor=1,improve=0.01, trace=TRUE, plot=FALSE)
print(mtry)
#adaptação do código desenvolvido por Anne (2020).
```

Com a determinação de 4 para o hiperparâmetro mtry.
A criação de um segundo modelo com mtry = 4 para fazer avaliação dos modelos e determinar o modelo com melhor desempenho.

```{R criação de um segundo modelo com mtry 4, echo = TRUE}
#o valor ótimo para mtry é 4, que produz o menor erro.

set.seed(123)
# random forest para regressão com mtry=4
IDHM.model.2 <- randomForest(IDHM ~ ., data = treino.IDHM, ntree=500, mtry = 4, 
                         importance = TRUE, na.action = na.omit) 
print(IDHM.model.2) 
# Plot the error vs the number of trees graph 
plot(IDHM.model.2, main = "")

# Adicionar título e fonte no estilo ABNT
title(main = "Gráfico 5 - Erro vs Número de Árvores no Modelo 2", adj = 0)
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj = 0, cex=0.8)
#adaptação do código desenvolvido por Anne (2020).
```

Com isso, observa-se uma melhora na porcentagem de explicação do segundo modelo saindo de 97,6% do modelo IDHM.model.1 para o IDHM.model.2 com 97,71% de explicação da variação.
Com isso, é possível ir para a avaliação do modelo.

5.  **AVALIAÇÃO DO MODELO E RESULTADOS**

A avaliação de modelos na ciência de dados é, sem dúvida, uma etapa de alta importância, que visa à aferição de eficácia do modelo em questão.
Essa fase é frequentemente realizada após o treinamento do modelo e tem como objetivo fundamental validar o desempenho do modelo frente a dados ainda não vistos por este durante o processo de treinamento.
A avaliação do desempenho do modelo vai além de uma simples confirmação de sua funcionalidade, ela auxilia na compreensão de como as predições foram feitas e ajuda a elucidar a eficiência do algoritmo na prática.

No contexto da pesquisa, o modelo de aprendizado de máquina adotado é o Random Forest, um algoritmo capaz de gerenciar relações complexas, além de resistir ao overfitting.
A avaliação desse modelo, então, é realizada testando-o em um conjunto de dados que foi previamente separado, denominado conjunto de testes.
Essa separação do conjunto de dados em treinamento e teste é essencial para que a avaliação seja autêntica e sem viés, fornecendo uma estimativa não tendenciosa do desempenho do modelo.

A escolha da métrica de avaliação a ser usada é crucial e depende diretamente do tipo de tarefa de previsão proposta.
Para tarefas de regressão, onde o objetivo é a previsão de um valor contínuo, a métrica comumente utilizada é o Erro Quadrático Médio (MSE).
Esta métrica avalia a média dos quadrados das diferenças entre os valores verdadeiros e os valores previstos pelo modelo.
Ao fazer isso, fornece uma medida numérica direta do desempenho do modelo.

Um erro quadrático médio alto não indica necessariamente um modelo ruim, assim como um erro baixo não garante um bom modelo.
A interpretação desse valor deve ser feita em relação à escala dos dados e ao contexto específico do problema.

Em contraste, para tarefas de classificação, onde a finalidade é atribuir uma classe a uma observação, várias outras métricas podem ser relevantes, como a acurácia, que mede a proporção de acertos em relação ao total, precisão, que considera a proporção de verdadeiros positivos em relação a todos os resultados positivos, recall, que considera a proporção de verdadeiros positivos em relação à soma dos verdadeiros positivos e falsos negativos, e F1-score, uma média harmônica entre precisão e recall que busca um equilíbrio entre essas duas métricas.

Outro aspecto importante a considerar é o equilíbrio entre o desempenho no conjunto de treinamento e no conjunto de testes.
Embora um modelo possa ter um desempenho excepcional no conjunto de treinamento, se ele não se sair bem no conjunto de teste, isso pode ser um sinal de overfitting, ou seja, que o modelo se adaptou muito aos dados de treinamento e não conseguiu generalizar bem para novos dados.

Por fim, é importante lembrar que nenhuma métrica ou procedimento de avaliação pode garantir a eficácia de um modelo em todos os cenários possíveis.
Em última análise, o valor de um modelo depende de sua capacidade de fazer previsões úteis em situações reais, o que pode exigir testes adicionais e ajustes contínuos com base em feedback e novos dados.
Portanto, o processo de avaliação do modelo não é apenas uma etapa no desenvolvimento do modelo, mas uma tarefa contínua que continua mesmo após o modelo ser colocado em uso.

Ao caso do IDHM, a avaliação começou gerando as previsões do modelo IDHM.model.1 e armazenando na variável IDHM.predições.1.
A fim de obter uma visão inicial das previsões, visualizou-se as estimativas de IDHM para os seis primeiros registros do conjunto de teste, indicadas pelos índices 4, 5, 6, 21, 25 e 26, e seus valores preditos correspondentes.
Em seguida, o mesmo processo foi feito para o modelo IDHM.model.2, armazenados na variável IDHM.predições.2.

Em seguida foi calculado o Erro Quadrático Médio da Raiz (RMSE), métrico padrão utilizada em regressão para avaliar a diferença do valor previsto e o valor observado.
O cálculo do RMSE segue a equação do Erro Quadrático Médio MSE, no entanto ao final é calculada a raiz quadrada do Erro Quadrático Médio.
As variáveis continuam as mesmas no RMSE.

MSE=1/n ∑*(i=1)^n▒(yi-ŷi)^2*

*n = número total de observações*

*y = valor real da i-ésima observação*

*ŷ = valor previsto da i-ésima observação*

*RMSE= √(1/n ∑*(i =1)^n▒(yi-ŷi)^2 )

O resultado dos RMSE dos modelos foi obtido com a função RSME, e os valores foram de 0.008417118 para o modelo 1 e de 0.00817621 para o modelo 2.

```{r avaliação modelos, echo = TRUE}
# Fazer predições com dados de teste usando modelo 1 (mtry = 3)
IDHM.predições.1 <- IDHM.model.1 %>% predict(teste.IDHM)
head(IDHM.predições.1)
# Fazer predições com dados de teste usando modelo 2 (mtry = 4)
IDHM.predições.2 <- IDHM.model.2 %>% predict(teste.IDHM)
head(IDHM.predições.2)


# Calcular o erro médio de previsão -- erro quadrático médio da raiz (RMSE) de ambos os modelos
RMSE(IDHM.predições.1, teste.IDHM$IDHM)
RMSE(IDHM.predições.2, teste.IDHM$IDHM)
#adaptação do código desenvolvido por Anne (2020).
```

Durante a modelagem do IDHM com o algoritmo Random Forest, a importância das variáveis foi mensurada através de métricas específicas.
Utilizamos a métrica "Percentagem de Incremento do Erro Quadrático Médio" (%IncMSE) para entender o quanto o erro do modelo é afetado ao alterar aleatoriamente os valores de uma variável.
Adicionalmente, empregamos a métrica "Incremento da Pureza do Nó" (IncNodePurity) para avaliar o impacto da variável na homogeneidade dos nós resultantes de divisões.
Através dessa análise, identificamos que as variáveis: renda per capita, subíndice de frequência de escolaridade e esperança de vida exibiram uma importância destacada, com elevados valores em ambas as métricas.
Em contraste, a variável ano mostrou ter um peso menor na modelagem, indicando uma relevância reduzida na predição do IDHM.

```{r Resultado dos Incrementos do Erro Quadrático Médio e do Nó de Pureza., echo = TRUE}
#avaliar a importância das variáveis para o modelo 
importance(IDHM.model.1)
varImpPlot(IDHM.model.1, main = "")

# Adicionar título e fonte no estilo ABNT
title(main = "Gráfico 6 - Importância das Variáveis no Modelo Random Forest", adj = 0)
mtext("Fonte: Elaboração própria com dados do Atlas Brasil", side=1, line=4, adj = 0, cex=0.8)
#adaptação do código desenvolvido por Anne (2020).
```

Para avaliar a performance do modelo Random Forest na predição do IDHM, foi necessário confrontar as predições geradas pelo modelo com os valores reais de IDHM.
Primeiramente, as predições, originalmente na forma de um vetor, foram convertidas em um data frame denominado IDHM.predições.df Posteriormente, com a finalidade de facilitar a comparação, o conjunto de testes (teste.IDHM) foi mesclado com o data frame das predições, utilizando os índices dos registros como chave de junção.

Com os dados alinhados, uma nova coluna foi calculada, nomeada diff, a qual representa a diferença entre os valores reais do IDHM e as respectivas predições.
Esta coluna proporciona uma visão imediata do erro associado a cada predição, permitindo uma análise mais granular da performance do modelo.
Por fim, o data frame resultante IDHM.predições.df fornece um panorama completo das predições, valores reais e diferenças associadas, constituindo uma ferramenta valiosa para avaliação e refinamento do modelo.

```{r Criação de Data Frame com o IDHM Real, Predito e a diferença., echo = TRUE}
# Converter predições para um data frame 
IDHM.predições.df <- as.data.frame(IDHM.predições.1)
# Mesclar com base no índice
IDHM.predições.df <- merge(teste.IDHM, IDHM.predições.df, by.x = 0, by.y = 0, all.x = TRUE, all.y = TRUE)
# Criar uma nova coluna calculada com a diferença da predição do IDHM, e o valor Real
IDHM.predições.df$diff <- with(IDHM.predições.df, IDHM.predições.df$IDHM - IDHM.predições.df$IDHM.predições.1)
# Obter a média da diferença
IDHM.predições.df
mean(IDHM.predições.df[,"diff"])
#adaptação do código desenvolvido por Anne (2020).
```

O data frame com as previsões do modelo 1 foi extraído com a previsão e o diferencial para cada observação.
e a média da diferença foi de -0.00127523, obtido pela função "mean".

Por fim, para finalizar a avaliação do modelo é feito um gráfico plotando os valores reais e os valores previstos para o IDHM.

```{r Plotagem das linhas de valores reais x previstos no modelo, echo = TRUE}
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
#adaptação do código desenvolvido por Anne (2020).
```

PUm modelo comparativo foi feito com a divisão dos dados de 90% para treino e 10% para teste, entretanto o modelo não teve um desempenho significativamente diferente, o modelo 1 teve desempenho de 97,6% de explicação, enquanto no modelo com divisão 90/10 teve desempenho de 97,52%.

A raiz do erro quadrático médio do modelo 1 foi 0.008417118, no modelo com divisão 90/10 o RSME foi de 0.006009533 uma queda de 0,002407585 no RMSE, o indica um melhor ajuste do modelo aos dados.
Entretanto a mudança na divisão dos dados não leva á mudanças significativas, visto que embora o RSME tenha diminuído, a explicação da variação dos dados modelo diminui.

**6. CONCLUSÃO**

Foi observado ao longo do trabalho que o aprendizado de máquina está popularizando no campo econômico com economistas renomados, economista chefe em empresas grandes e laureados do Prémio de Ciências Económicas em Memória de Alfred Nobel já dedicam atenção a área do Machine Learning como o professor Ph.D.
Guido Imbens, e o Economista Chefe da Google Inc.
Hal Varian.

O processo de interpretação dos resultados gerados por modelos de aprendizado de máquina e a subsequente comunicação destes para diferentes públicos-alvo é um desafio que envolve um leque de habilidades que vão além do domínio técnico do aprendizado de máquina.
Em particular, essas habilidades são de natureza interdisciplinar, incorporando elementos de estatística, ciência da computação, visualização de dados e comunicação.

Uma das etapas críticas na interpretação dos resultados é a avaliação da importância das variáveis no modelo de aprendizado de máquina.
Para o modelo de Florestas Aleatórias (Random Forest), esta tarefa geralmente envolve a análise da diminuição da precisão do modelo quando os valores de uma variável são embaralhados de maneira aleatória, mantendo todos os outros valores constantes.
Assim, as variáveis que geram uma queda mais acentuada na precisão são consideradas mais importantes.
Este método, conhecido como "importância de permutação", fornece uma medida quantitativa da contribuição de cada variável para o poder preditivo do modelo.

No entanto, é importante notar que a importância das variáveis pode ser influenciada por uma série de fatores, incluindo a correlação entre variáveis e a escala em que as variáveis são medidas.
Assim, a interpretação da importância das variáveis deve ser realizada com cautela e em combinação com outras técnicas de interpretabilidade do modelo, como análise de componentes principais ou mapas de calor de correlação.

O modelo obteve um excelente grau de ajuste aos dados no treino, não chegando à uma explicação de 100% da variância (overfitting) , se mantendo a uma explicação de 97,6%, com isso conclui-se que o modelo Random Forest teve um erro quadrático médio na casa dos centésimos, demonstrando uma incidência de erro pequeno para o IDHM, visto que este varia de 0 à 1.

Ao se construir um data frame para avaliar os valores previstos pelo modelo em relação ao real, obteve uma média de erro de -0.00127523, demonstrando que embora haja um ajuste expressivo, é possível observar uma banda para variar as previsões.

Uma eficiência considerável da previsão com modelos de ML também observada na comparação dos modelos Random Forest, SVM e AdaBoost na classificação do IDH feita por Arumnisaa et al, (2023) em que os modelos SVM e AdaBoost tiveram acurácia de 84,61% e 80,36% enquanto o modelo de RF teve acurácia de 85,23% na classificação do IDH de distrito/cidade na Indonésia.
Demonstrando que o resultado do desempenho de 97,6% do modelo 1 na pesquisa não contrasta com a alta eficiência do modelo em outros estudos.

Com isso esse trabalho contribuiu para a difusão de ferramental novo na economia, alinhado à uma demonstração prática detalhada de sua aplicação, para que futuros entrantes no campo do Machine Learning na economia possam dispor que um manual passo à passo para auxiliá-los a desenvolver seus primeiros modelos de Machine Learning.

Junto aos trabalhos apresentados em que pesquisadores aplicaram o ML não somente a previsão de indicadores como o IDH, mas ao estudo do crescimento econômico, previsão de preços no setor energético na Alemanha (VOGT, J.2021), preço de ações (Агнон Х.О.. 2021), junto a modelos de series temporais como o caso do Prophet, o ML demonstra capacidade de fazer previsões e modelações de variáveis econômicas, o que demonstra esta ser uma excelente ferramenta para os economistas aprender e replicá-las.

**REFERÊNCIAS**

ATHEY, S. The Impact of Machine Learning on Economics.
Disponível em: <https://www.nber.org/books-and-chapters/economics-artificial-intelligence-agenda/impact-machine-learning-economics>.

ATHEY, S.; IMBENS, G. W. Machine Learning Methods That Economists Should Know About.
Annual Review of Economics, v. 11, n.
1, p. 685--725, 2 ago.
2019.

CONCEIÇÃO, P. Human Development Report.
LANHAM: BERNAN PRESS, 2022.

SISTEMA FIRJAN • IFDM • 2018 METODOLOGIA.
[s.l: s.n.].
Disponível em: <https://www.firjan.com.br/data/files/E8/06/F0/D5/58E1B610E6543AA6A8A809C2/Metodologia%20IFDM%20-%20Final.pdf>.
Acesso em: 24 jun. 2023.

IFDM \| Índice FIRJAN de Desenvolvimento Municipal: Consulta.
Disponível em: <https://www.firjan.com.br/ifdm/>.

AJAY AGRAWAL; GANS, J.; AVI GOLDFARB. The economics of artificial intelligence : an agenda.
Chicago: The University Of Chicago Press, 2019.

KAUR, M.
et al.
Supervised Machine-Learning Predictive Analytics for National Quality of Life Scoring.
Applied Sciences, v. 9, n.
8, p. 1613, 18 abr.
2019.

SHERMAN, L.
et al.
Global High-Resolution Estimates of the United Nations Human Development Index Using Satellite Imagery and Machine-learning.
1 mar. 2023.

TOBAIGY, F.; ALAMOUDI, M.; BAFAIL, O. Human Development Index: Determining and Ranking the Significant Factors.
International Journal of Engineering Research & Technology, v. 12, n.
3, 29 mar. 2023.

MULLAINATHAN, S.; SPIESS, J. Machine Learning: An Applied Econometric Approach.
The Journal of Economic Perspectives, v. 31, n.
2, p. 87--106, 2017.

DONALDSON, D.; STOREYGARD, A. The View from Above: Applications of Satellite Data in Economics.
Journal of Economic Perspectives, v. 30, n.
4, p. 171--198, nov. 2016.

BHATTAD, S.
et al.
EasyChair Preprint Review of Machine Learning Techniques for Cryptocurrency Price Prediction REVIEW OF MACHINE LEARNING TECHNIQUES FOR CRYPTOCURRENCY PRICE PREDICTION.
[s.l: s.n.].
Disponível em: <https://easychair.org/publications/preprint_open/t5fX>.
Acesso em: 14 nov. 2023.

SONI, P.; TEWARI, Y.; KRISHNAN, D. Machine Learning Approaches in Stock Price Prediction: A Systematic Review.
Journal of Physics: Conference Series, v. 2161, n.
1, p. 012065, 1 jan. 2022.

NIKOU, M.; MANSOURFAR, G.; BAGHERZADEH, J. Stock price prediction using DEEP learning algorithm and its comparison with machine learning algorithms.
Intelligent Systems in Accounting, Finance and Management, 3 dez.
2019.

JEAN, N.
et al.
Combining satellite imagery and machine learning to predict poverty.
Science, v. 353, n.
6301, p. 790--794, 18 ago.
2016.

ARUMNISAA, R. I.; WIJAYANTO, A. W. Comparison of Ensemble Learning Method: Random Forest, Support Vector Machine, AdaBoost for Classification Human Development Index (HDI).
Sistemasi: Jurnal Sistem Informasi, v. 12, n.
1, p. 206--218, 31 jan. 2023.

VOGT, JAN. "Vorhersage von Aktienkursbewegungen der Energiebranche mithilfe maschinellen Lernens und Stimmungserkennung von Beitr¨agen aus sozialen Medien", 2021

BRIGO, FRANCESCO.
"Applicazione di tecniche di Machine Learning per l'analisi del ruolo del capitale umano nelle startup", 2019.

PESCI, P. Previsione del prezzo delle azioni di S&P con reti neurali LSTM e GRU.
2021.

СЕМЯННИКОВ, Г.
В.
Рекомендательный сервис для торговли акциями на фондовом рынке с применением машинного обучения.
Естественные и Технические Науки, n.
№04, p. 131--134, 2020.

АГНОН Х.О..
"прогнозирование цены акций с использованием машинного обучения" Инновационная наука, no. 6, 2021, pp. 21-26.

VARIAN, H. R. Big Data: New Tricks for Econometrics.
Journal of Economic Perspectives, v. 28, n.
2, p. 3--28, maio 2014.

OZDEN, E.; GULERYUZ, D. Optimized Machine Learning Algorithms for Investigating the Relationship Between Economic Development and Human Capital.
Computational Economics, 24 set.
2021.

Metodologia Índice de Desenvolvimento Humano Municipal - IDHM: metodologia Disponível em: <https://onedrive.live.com/?authkey=%21AHWsj%2DUGXcU7LKE&id=124653557C0404EC%2122849&cid=124653557C0404EC&parId=root&parQt=sharedby&o=OneUp>.

ANNE, J. Predicting the Human Development Index.
Disponível em: <https://github.com/julieanneco/predictingHDI>.

AREL-BUNDOCK, V.; BACHER, E. WDI: World Development Indicators and Other World Bank Data.
Disponível em: <https://cran.r-project.org/web/packages/WDI/index.html>.

IRIZARRY, R. A. Introduction to Data Science.
[s.l.] CRC Press, 2019.

Atlas Brasil.
Disponível em: <http://www.atlasbrasil.org.br/acervo/atlas>.

UNDP (United Nations Development Programme).
1990.
Human Development Report 1990: Concept and Measurement of Human Development.
New York.

UNITED NATIONS DEVELOPMENT PROGRAMME; FUNDAÇÃO JOÃO PINHEIRO; INSTITUTO DE PESQUISA ECONÔMICA APLICADA. O Índice de Desenvolvimento Humano Municipal Brasileiro.
Brasília, Dstrito Federal, Brazil: Pnud, Dezembro, 2013.

Liaw A, Wiener M (2002).
"Classification and Regression by randomForest." R News, 2(3), 18-22.
<https://CRAN.R-project.org/doc/Rnews/>.

LIAW, A.; WIENER, M. Classification and Regression by randomForest.
R News, v. 2, n.
3, 2002.

WICKHAM, H.; HENRY, L.; RSTUDIO.
tidyr: Tidy Messy Data.
Disponível em: <https://cran.r-project.org/web/packages/tidyr/index.html>.

WICKHAM, H.
et al. readxl: Read Excel Files.
Disponível em: <https://cran.r-project.org/web/packages/readxl/index.html>.

WICKHAM, H. The Split-Apply-Combine Strategy for Data Analysis.
Journal of Statistical Software, v. 40, n.
1, 2011.

WICKHAM, H.
plyr: Tools for Splitting, Applying and Combining Data.
Disponível em: <https://cran.r-project.org/web/packages/plyr/index.html>.

Wei T, Simko V (2021).
R package 'corrplot': Visualization of a Correlation Matrix.
(Version 0.92), <https://github.com/taiyun/corrplot>.

WEI, T.
et al. corrplot: Visualization of a Correlation Matrix.
Disponível em: <https://cran.r-project.org/web/packages/corrplot/index.html>.

NEUWIRTH, E. RColorBrewer: ColorBrewer Palettes.
Disponível em: <https://cran.r-project.org/web/packages/RColorBrewer/index.html>.

WICKHAM, H. Ggplot2 : Elegant Graphics For Data Analysis.
[s.l.] Springer-Verlag New York, 2016.

Create Elegant Data Visualisations Using the Grammar of Graphics [R package ggplot2 version 3.2.1].
R-project.org, 2019.

WILKINSON, L. Grammar of graphics.
[s.l.] Springer, 2005.

KASSAMBARA, A.
ggpubr: "ggplot2" Based Publication Ready Plots.
Disponível em: <https://cran.r-project.org/web/packages/ggpubr/index.html>.

KUHN, M. Building Predictive Models inRUsing thecaretPackage.
Journal of Statistical Software, v. 28, n.
5, 2008.

KUHN, M.
et al. caret: Classification and Regression Training.
Disponível em: <https://cran.r-project.org/web/packages/caret/index.html>.

TUSZYNSKI, J.
caTools: Tools: Moving Window Statistics, GIF, Base64, ROC AUC, etc.
Disponível em: <https://cran.r-project.org/web/packages/caTools/index.html>.

ANNE, J. Predicting the Human Development Index.
Disponível em: <https://github.com/julieanneco/predictingHDI>.
Acesso em: 12 out.
2023.

BREIMAN, L. Random Forests.
Machine Learning, v. 45, n.
1, p. 5--32, 2001.

SALA-I-MARTIN, X. X. I Just Ran Two Million Regressions.
The American Economic Review, v. 87, n.
2, p. 178--183, 1997.

Calculating the human development indices-graphical presentation Inequality-adjusted Human Development Index (IHDI) Knowledge Human Development Index (HDI) Long and healthy life A decent standard of living Human Development Index (HDI) Knowledge Long and healthy life A decent standard of living Inequality-adjusted Human Development Index (IHDI) Health Education.
[s.l: s.n.].
Disponível em: <https://hdr.undp.org/system/files/documents/technical-notes-calculating-human-development-indices.pdf>.

Atlas Brasil.
Disponível em: <http://www.atlasbrasil.org.br/acervo/atlas>.

The Demography of Tropical Africa William Brass .
[et Al].
[s.l: s.n.].
