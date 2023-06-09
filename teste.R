df
table(subset(df,df$nacionalidad=="ARG"),df$goles)
tabyl(df,jugadores,goles)
table(df$goles,useNA = "always")

getwd()

### importar los datos
library(rio)
library(skimr)

topo = import("dados/ej_visualizacion_datos.xlsx")



### es necesario estandarizar los nombres?
# intentar hacerlo con la función janitor::clean_names()

topo= topo %>%
  janitor::clean_names()


### visualizar los datos con solo comando y contestar:

# cuál de las columnas tiene mayor promedio?
# cuál tiene el mayor valor
# cuál tiene una distribución que más se acerca a una "normal"?
# cuántas parcelas hay?

glimpse(topo)

topo %>%
  skim() %>%
  dplyr::filter(parcela)


head(topo)
tabyl(topo, topo_4_antes)

chickwts %>%
  skim_tee() %>%
  dplyr::filter(feed == "sunflower")

getwd()
