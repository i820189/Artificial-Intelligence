# Instalamos la libreria
install.packages("http://download.r-forge.r-project.org/src/contrib/IsolationForest_0.0-26.tar.gz", repo=NULL, type="source")

# Cargamos la libreria
library(IsolationForest)

# Cargamos el conjunto de datos stackloss
data(stackloss)

# stackloss es un data frame con 21 observaciones en 4 variables

# Los datos representan 21 dias de operaciones de una planta de de oxido de acido nitrico

# La variable Air.Flow representa el ratio de operacion de la planta
# La variable Water.Temp es la temperatura del agua que circula por la torre.
# La variable Acid.Conc es la concentracion del acido circulante.

# stack.loss es la variable dependiente y se trata de 10 veces el porcentaje de la planta 
# que se escapa

plot(stackloss[,1], stackloss[,2])

# Entrenamos un modelo de Isolation Forest
model.1 <- IsolationTrees(stackloss, rFactor = 0)
model.1

# Obtenemos el Score de anomalia
score.1 <- AnomalyScore(stackloss, model.1)

# Mostamos el score
score.1$outF

# 1, 2, 3

# Con nuevos datos
prueba <- data.frame("Air.Flow" = 62, "Water.Temp" = 23, "Acid.Conc" = 87, "stack.loss" = 18)
score.2 <- AnomalyScore(prueba, model.1)
score.2$outF