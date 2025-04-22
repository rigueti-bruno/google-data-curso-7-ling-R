# Obtendo o dataset Anscombe's quartet:
library(Tmisc)
data(quartet)

View(quartet)

# Sumarizando os conjuntos de dados: medias, desvio-padrao e correlação:
quartet %>%
  group_by(set)%>%
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

# Como as medidas estatísticas são praticamente as mesmas
# Precisamos plotar visualizações para verificar diferenças entre os dados:
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method = lm,se = FALSE) + facet_wrap(~set)

library(datasauRus)
ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)